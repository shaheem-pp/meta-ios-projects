import Cocoa

enum Color {
    case red
    case green
    case blue
}

print(Color.blue)

enum Dessert {
    case iceCream(brand: String?)
    case hotChocolate
}

let favDessert = Dessert.iceCream(brand: "")

switch favDessert {
case .iceCream(let brand):
    let prefix: String
    if let brand = brand {
        prefix = brand
    } else {
        prefix = ""
    }
    print("Ice Cream Brand: \(prefix)")
case .hotChocolate:
    print("Great choice")
}

enum ClassStrength {
    case boys(Int)
    case girls(Int)
}

let classOneBoys = ClassStrength.boys(10)
let classTwoBoys = ClassStrength.boys(15)
let classOneGirls = ClassStrength.girls(13)
let classTwoGirls = ClassStrength.girls(12)

switch classOneBoys {
case .boys(let count):
    print("classOneBoys -> \(count)")
case .girls:
    break
}

switch classTwoBoys {
case .boys(let count):
    print("classTwoBoys -> \(count)")
case .girls:
    break
}

switch classOneGirls {
case .boys:
    break
case .girls(let count):
    print("classOneGirls -> \(count)")
}

switch classTwoGirls {
case .boys:
    break
case .girls(let count):
    print("classTwoGirls -> \(count)")
}

enum Day: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

let today = Day.friday
print("Today is \(today.rawValue)")


enum PastaTypes {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

var checkIfCooked = PastaTypes.spaghetti(cookingTime: 8)

switch checkIfCooked {
case .spaghetti(let cookingTime):
    if cookingTime < 8 {
        print("Spaghetti is still not fully cooked...")
    } else {
        print("Spaghetti is cooked, take it out of the water!")
    }
case .penne, .ravioli, .rigatoni:
    print("Not checking cooking time for other pasta types.")
}


enum BeverageType {
    case coffee
    case tea
    case juice
    case soda
}

func enjoyBeverage(beverage: BeverageType) {
    switch beverage {
    case .coffee:
        print("Enjoy your coffee!")
    case .tea:
        print("Sip on some tea and relax.")
    case .juice:
        print("Refreshing juice, perfect for a sunny day!")
    case .soda:
        print("Fizzing soda, a great choice for a treat.")
    }
}


let morningCoffee = BeverageType.coffee
let afternoonTea = BeverageType.tea

enjoyBeverage(beverage: morningCoffee)
enjoyBeverage(beverage: afternoonTea)

enum Device {
    case smartphone(model: String, operatingSystem: String)
    case laptop(model: String, operatingSystem: String)
    case tablet(model: String, operatingSystem: String)
}

func printDeviceInfo(device: Device) {
    switch device {
    case let .smartphone(model, os) where os == "iOS":
        print("iPhone \(model) - Running iOS")
    case let .smartphone(model, os) where os == "Android":
        print("Android Phone \(model) - Running Android OS")
    case let .laptop(model, os) where os == "macOS":
        print("MacBook \(model) - Running macOS")
    case let .laptop(model, os) where os == "Windows":
        print("Windows Laptop \(model) - Running Windows OS")
    case let .tablet(model, os):
        print("Tablet \(model) - Running \(os)")
    default:
        print("Unknown device type")
    }
}

let iPhone = Device.smartphone(model: "12 Pro", operatingSystem: "iOS")
let windowsLaptop = Device.laptop(model: "Dell XPS", operatingSystem: "Windows")
let androidTablet = Device.tablet(model: "Samsung Galaxy Tab", operatingSystem: "Android")

printDeviceInfo(device: iPhone)
printDeviceInfo(device: windowsLaptop)
printDeviceInfo(device: androidTablet)

enum Table {
  case Indoors
  case Outdoors
  var description: String {
    switch self {
    case .Indoors:
      return "Use circular tables"
    case .Outdoors:
      return "Use rectangular tables"
    }
  }
}

let table = Table.Indoors
print(table.description)
