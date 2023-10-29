import Cocoa

var string : Bool = "A" > "a"
print("var string : Bool = 'A' > 'a' -> \(string)")


var int : Bool = 10 > 6
print("var int : Bool = 10 > 6 -> \(int)")


if(5<9){
    print("5 is less than 9")
}



if (81%3 == 0){
    print("Completely Divisible")
}else{
    print("Completely Non Divisible")
}


let multiplier = 7

for i in 1...10 {
    print("\(i)x\(multiplier) = \(i*multiplier)")
}

var batteryCharge = 30

switch batteryCharge{
case 1...10: print("Critical Condition")
case 11..<30: print("You need to chargee")
case 100: print("Battery is full")
default: print("Your Battery Percent is: \(batteryCharge)%")
}



let language = "English"
switch language {
    case "English": print("The default language is set to English.")
    case "Spanish": print("The default language is set to Spanish.")
    default: print("The default language has not been configured yet.")
}




let freeApp = true
if freeApp == true {
  print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}
let morningTemperature = 70
let eveningTemperature = 80
if morningTemperature < eveningTemperature {
  print("It is colder in the morning.")
} else {
  print("It is colder in the evening.")
}
let temperatureDegree = "Fahrenheit"
if temperatureDegree == "Fahrenheit" {
  print("The weather app works with Fahrenheit degrees.")
} else {
  print("The weather app works with Celsius degrees.")
}
if temperatureDegree == "Celsius" || temperatureDegree == "Fahrenheit" {
  print("The weather app is configured properly.")
} else {
  print("The weather app isn't configured properly.")
}
switch temperatureDegree {
    case "Fahrenheit": print("The weather app is configured for the US.")
    case "Celsius": print("The weather app is configured for Europe.")
    default: print("The weather app has an unknown configuration.")
}
