import Cocoa

class Vegetable {
    var primaryColor: String {
        "Green"
    }
    func sing() {
        print("I'm an awesome Vegetable.")
    }
}

class Spinach: Vegetable {
    let lovedBy = "Popeye"
    func say() {
        print("I'm loved by \(lovedBy)")
    }
}

class Broccoli: Vegetable {
    override func sing() {
        print("\(primaryColor) is my favourite color")
        print("I'm Children's nightmare")
        super.sing()
        print("I like the sun.")
    }
}

class Carrot: Vegetable {
    override var primaryColor: String {
        "Orange"
    }
}

func gap() {
    print("")
    print("---------------------")
    print("")
}

let spinach = Spinach()
print(spinach.primaryColor)
spinach.say()
spinach.sing()

gap()

let broccoli = Broccoli()
print(broccoli.primaryColor)
broccoli.sing()

gap()

let carrot = Carrot()
print(carrot.primaryColor)
carrot.sing()


// A Swift class with access control

// Public class accessible from any source file
public class ExampleClass {

    // Public property with a default value
    public var publicProperty: String = "Public Property"

    // Internal property accessible within the module (default access level)
    var internalProperty: String = "Internal Property"

    // Private property accessible only within this class
    private var privateProperty: String = "Private Property"

    // Public initializer accessible from any source file
    public init() {}

    // Public method accessible from any source file
    public func publicMethod() {
        print("Public method called")
    }

    // Internal method accessible within the module (default access level)
    func internalMethod() {
        print("Internal method called")
    }

    // Private method accessible only within this class
    private func privateMethod() {
        print("Private method called")
    }
}

// Example of usage from another source file

// Create an instance of ExampleClass
let exampleInstance = ExampleClass()

// Access public properties and methods
print(exampleInstance.publicProperty)
exampleInstance.publicMethod()

// Access internal properties and methods
print(exampleInstance.internalProperty)
exampleInstance.internalMethod()

// The following lines would result in a compilation error due to private access level
// print(exampleInstance.privateProperty)
// exampleInstance.privateMethod()
