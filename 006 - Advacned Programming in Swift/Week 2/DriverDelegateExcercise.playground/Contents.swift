import Cocoa

protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}

class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}

class LittleLemon {
    var deliveryDriver: Driver?
    func deliverFood(_ food: String, to destination: String) {
        if let deliveryDriver = deliveryDriver {
            deliveryDriver.driveToDestination(
                destination,
                with: food
            )
        } else {
            print("No delivery driver.")
        }
    }
}

let bob = DeliveryDriver(name: "Bob")
let littleLemon = LittleLemon()
littleLemon.deliverFood(
    "Super Spaghetti",
    to: "1 Spaghetti Lane"
)
littleLemon.deliveryDriver = bob
littleLemon.deliverFood(
    "Super Spaghetti",
    to: "1 Spaghetti Lane"
)


protocol Protocol1 {
  func output()
}

extension Protocol1 {
  func output() {
    print("Output")
  }
}

class Delegate: Protocol1 {
  func output() {
    print("Delegation")
  }
}

class Output {
  var delegate: Protocol1?
  func output() {
    delegate?.output()
  }
}

let output = Output()
output.delegate = Delegate()
output.output()

class Spaghetti {
    func fetchIngredients() {
        print("Spaghetti Ingredients")
    }
}
class SpaghettiMeatball: Spaghetti {
    override func fetchIngredients() {
        print("BBB")
        super.fetchIngredients()
        print("AAA")
    }
}
let spaghettiMeatball = SpaghettiMeatball()
spaghettiMeatball.fetchIngredients()


