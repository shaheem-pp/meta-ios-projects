import Cocoa

var greeting = "Hello, playground"

class Rectangle {
    let width: Int
    let height: Int
    var area: Int {
        width * height
    }
    var perimeter: Int {
        width * 2 + height * 2
    }
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

let rectangle = Rectangle(width: 12, height: 5)

print(rectangle.perimeter)


class LocalFile {
  let name: String
  let fileExtension: String

  init(name: String, fileExtension: String) {
    self.name = name
    self.fileExtension = fileExtension
  }

  var fullFileName: String {
    return name + "." + fileExtension
  }
}

let file = LocalFile(name: "image", fileExtension: "png")
print(file.fullFileName)


struct Employee {
  var salary: Double
  var tax = 0.2
  mutating func deductTax() {
    salary = salary - (tax * salary)
  }
}
var emp = Employee(salary: 100)
emp.deductTax()
print(emp.salary)

struct Tax {
  var amount: Int = 5
}
var tax1 = Tax()
var tax2 = tax1
tax1.amount = 20
print("\(tax1.amount), \(tax2.amount)")

class Product   {
  var price: Int = 5
}
var product1 = Product()
var product2 = product1
product1.price = 20
print("\(product1.price), \(product2.price)")


class Vehicle {
  var type: String
  var noOfWheels: Int
  init(type: String, wheels: Int) {
    self.type = type
    noOfWheels = wheels + 1
  }
}
let car = Vehicle(type: "Jeep", wheels: 3)
print(car.type, "has", car.noOfWheels, "wheels")


class Square {
  var width: Double = 0
  var area: Double {
    return width * width
  }
}

let square = Square()
square.width = 2
print(square.area)
