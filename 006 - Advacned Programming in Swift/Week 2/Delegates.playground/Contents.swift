import Cocoa

// Define a protocol that outlines the functionalities or properties that any conforming type must have.
protocol Employee {
    var name: String { get }
    func executePrimaryDuty()
}

// Implement the Employee protocol in a Cook struct. The Cook has a delegate of type Employee.
// This delegate can be any type that conforms to the Employee protocol, allowing for flexible delegation.
struct Cook: Employee {
    let name: String
    var delegate: Employee?
    
    func executePrimaryDuty() {
        print("\(name) is cooking.")
        // Delegate a task to the delegate, if it exists.
        delegate?.executePrimaryDuty()
    }
}

// Create another struct that also conforms to the Employee protocol.
// This struct will be used as the delegate for the Cook.
struct Cleaner: Employee {
    let name: String
    
    func executePrimaryDuty() {
        print("\(name) is cleaning.")
    }
}

// Demonstration of using the delegate pattern with the Cook and Cleaner.
func delegateExample() {
    // Create instances of Cook and Cleaner. The Cleaner will act as a delegate for the Cook.
    let john = Cook(name: "John", delegate: Cleaner(name: "Dave"))
    
    // When John executes his primary duty, he will also delegate a duty to his delegate, Dave.
    john.executePrimaryDuty()
    // Output:
    // John is cooking.
    // Dave is cleaning.
}

// Run the example
delegateExample()
