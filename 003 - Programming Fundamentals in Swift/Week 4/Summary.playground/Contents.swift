import Cocoa

//Value Types: Imagine you have a box of crayons. Each crayon is a different color. If you want to give your friend some crayons, you make a copy of the colors you want to share and give them the new set. Both you and your friend now have separate sets of crayons. In programming, value types work similarly. When you create a value (like a number or a piece of text), you can copy it and pass the copy around. Changes to the copy don't affect the original.
//
//Reference Types: Now, think of a library full of books. You and your friend can both go to the library and read the same book. If one of you writes a note in the book, the other person can see it because you're both looking at the same book. In programming, reference types work this way. When you create a reference type (like an object or a function), you can have multiple parts of your code refer to the same thing. If you change that thing through one reference, all the other references will see the change because they're all pointing to the same place in memory.

// Crayon struct (Value Type)
struct Crayon {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

var myCrayon = Crayon(color: "Red") // Create a crayon
var friendCrayon = myCrayon // Make a copy of the crayon

myCrayon.color = "Blue" // Change the color of my crayon

print("My crayon color: \(myCrayon.color)") // Output: My crayon color: Blue
print("Friend's crayon color: \(friendCrayon.color)") // Output: Friend's crayon color: Red




// Book class (Reference Type)
class Book {
    var content: String
    
    init(content: String) {
        self.content = content
    }
    
    func write(note: String) {
        self.content += "\n\(note)"
    }
}

var sharedBook = Book(content: "Once upon a time...") // Create a book
var myBookmark = sharedBook // Both variables point to the same book

sharedBook.write(note: "The end.") // Write a note in the book

print("My bookmark content: \(myBookmark.content)")
// Output: My bookmark content: Once upon a time...
//         The end.



struct Circle {
    var radius: Double
    
    // Computed property to calculate the area of the circle
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // Computed property with custom getter and setter
    var diameter: Double {
        get {
            return radius * 2
        }
        set(newDiameter) {
            radius = newDiameter / 2
        }
    }
}

var myCircle = Circle(radius: 3.0)
print(myCircle.area) // Output: 28.274333882308138
print(myCircle.diameter) // Output: 6.0

myCircle.diameter = 10.0
print(myCircle.radius) // Output: 5.0


struct CircleStruct {
    var radius: Double
    
    // Computed property to calculate the area of the circle
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // Computed property with custom getter and setter
    var diameter: Double {
        get {
            return radius * 2
        }
        set(newDiameter) {
            radius = newDiameter / 2
        }
    }
}

var myCircleStruct = CircleStruct(radius: 3.0)
print(myCircleStruct.area) // Output: 28.274333882308138
print(myCircleStruct.diameter) // Output: 6.0

myCircleStruct.diameter = 10.0
print(myCircleStruct.radius) // Output: 5.0



class CircleClass {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    // Computed property to get and set the diameter
    var diameter: Double {
        get {
            return radius * 2
        }
        set(newDiameter) {
            radius = newDiameter / 2
        }
    }
}

// Example usage
var myCircleClass = CircleClass(radius: 3.0)
print(myCircleClass.diameter) // Output: 6.0

myCircleClass.diameter = 10.0
print(myCircleClass.radius) // Output: 5.0
