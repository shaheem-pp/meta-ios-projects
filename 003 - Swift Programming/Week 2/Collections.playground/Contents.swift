import Cocoa


var products = [
    "carrot":1,
    "orange":2
]

var hasCoriander = false

if let productHerb = products["coriander"] {
    hasCoriander = true
}

print("Coriander in dictionare? \(hasCoriander)")

if let oldCarrotValue = products.updateValue(10, forKey: "carrot"){
    print("Old Value of Carrot is \(oldCarrotValue) and new value is \(products["carrot"]!)")
}

if let deletedItem = products.removeValue(forKey: "orange"){
    print("\(deletedItem) is deleted!")
}

var hasOrange = false

if let productFruit = products["orange"] {
    hasOrange = true
}

print("Orange in dictionare? \(hasOrange)")


var weeklyTemperatures: [String: Int] = [:]
weeklyTemperatures = [
  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
]
weeklyTemperatures["Monday"]! += 20
print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")
if let temperature = weeklyTemperatures["Sunday"] {
  print("The temperature on Sunday is \(temperature)°F.")
} else {
  weeklyTemperatures["Sunday"] = 100
  print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
}
if weeklyTemperatures.count == 7 {
  print("You have access to the weather forecast of the whole week.")
  weeklyTemperatures = [:]
  print("Reset weekly temperatures for next week!")
}


weeklyTemperatures = [
  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
]
for temp in weeklyTemperatures{
    print(temp.key)
    print(temp.value)
}

var names = ["Harry", "Ron", "Hermione"]

for name in names{
    print(name)
}


for (day, temperature) in weeklyTemperatures{
    print("On \(day) the temperature will be \(temperature)")
}



let levelScores = [10, 20, 30, 40, 50, 60, 70]
for (level, score) in levelScores.enumerated() {
  print("The score of level \(level + 1) is \(score).")
}
var gameScore = 0
for levelScore in levelScores {
  gameScore += levelScore
}
print("The game's score is \(gameScore).")
let weeklyTemperatures1 = [
  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
  "Sunday": 100,
]
for (day, temperature) in weeklyTemperatures1 {
  print("The temperature on \(day) is \(temperature)°F.")
}
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]
for index in 0...6 {
  print("The temperature on \(days[index]) is \(temperatures[index])°F.")
}
