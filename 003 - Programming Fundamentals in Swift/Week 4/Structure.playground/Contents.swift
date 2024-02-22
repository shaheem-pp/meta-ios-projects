import Cocoa

struct Recipe1{
    let name: String
    var ingredients: Set<String>
    var steps: [String]
    func printRecipe() {
        print("Recipe: \(name)")
        print("Ingredients: \(ingredients)")
        for (index, step) in steps.enumerated(){
            print("\(index+1) -> \(step)")
        }
    }
}


let teaRecipe = Recipe1(name: "Tea", ingredients: ["Tea Powder", "Sugar", "Milk"], steps: ["Boil The Milk", "Put Tea Powder", "Put Sugar as needed"])
teaRecipe.printRecipe()

struct Car {
    var brand: String
    var model: String
    var year: Int
    var color: String
    var mileage: Double
    
    func printDetails() {
        print("Car Details: \(year) \(brand) \(model) in \(color) color, with \(mileage) km.")
    }
}

var myCar = Car(brand: "Toyota", model: "Corolla", year: 2022, color: "Blue", mileage: 15)
myCar.printDetails()

struct Student {
    static var totalStudents = 0
    
    var number: Int
    let name: String
    
    
    func dataPrint() {
        print("\(number): \(name)")
    }
    
    init(name: String) {
        self.name = name
        Student.totalStudents += 1
        number = Student.totalStudents
        dataPrint()
    }
}

let shan = Student(name: "Shan")
let rafi = Student(name: "Rafi")
let dilshad = Student(name: "Dilshad")

struct Recipe {
    var orderCount = 0
    mutating func incrementOrderCount() {
        orderCount += 1
    }
    mutating func decrementOrderCount() {
        orderCount -= 1
    }
}
var recipe = Recipe()
print(recipe.orderCount)
recipe.incrementOrderCount ()
print(recipe.orderCount)
recipe.decrementOrderCount ()
print(recipe.orderCount)


struct TableReservation {
    var name: String
    var tableNumber: Int
    
    mutating func updateBooking(updatedName: String) {
        name = updatedName
    }
}

var johnBooking = TableReservation(name: "John", tableNumber: 1)
print(johnBooking)
johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)

struct Point {
  var x: Int
  var y: Int

  mutating func setXY(x: Int, y: Int) {
    self.x = x
    self.y = y
  }
}

var point = Point(x: 7, y: 3)
point.setXY(x: 5, y: 1)
print("\(point.x) \(point.y)")


struct Game {
  var score: Int

  mutating func incScore() {
    score += 1
  }
}

var game1 = Game(score: 1)
var game2 = game1
game1.incScore()
print("\(game1.score) \(game2.score)")


