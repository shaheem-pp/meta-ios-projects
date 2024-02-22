import Cocoa

var aClosure = {
    () -> Void in
    print("This is a closure")
}

aClosure()


var argumentClosure = {
    (str: String) -> Void in
    print("Hello \(str)")
}
argumentClosure("Shan")

var maximum = {
    (num1: Int, num2: Int) -> Int in
    return num1 > num2 ? num1 : num2
}

let max = maximum(1, 6)
print(max)


func updateValue() -> () -> Void {
    let capturedValue = 10
    return {
        print(capturedValue)
    }
}
let captureClosure = updateValue()


let letters = ["H" , "E" , "X" , "A"]
let myCollection = letters.sorted(by: { (string1: String, string2: String) -> Bool in return string1 < string2 } )


var goldBars1 = 0
let unlockTreasureChest = { (inventory: inout Int) in
    inventory += 100
}
unlockTreasureChest(&goldBars)
print(goldBars1)


var goldBars = 100
func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
    inventory -= 10
    completion(inventory)
}
print("You had \(goldBars) gold bars.")
spendTenGoldBars(from: &goldBars) { goldBars in
    print("You spent ten gold bars.")
    print("You have \(goldBars) gold bars.")
}
