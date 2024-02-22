import Cocoa

let day = "Sunday"
let dailyTemperature = 25
print("Today is \(day). Rise and shine!")
print("The temperature on \(day) is \(dailyTemperature)°F.")
var temperature = 24
print("The temperature in the morning on \(day) is \(temperature)°F.")
temperature = 28
print("The temperature in the evening on \(day) is \(temperature)°F.")
let weeklyTemperature = 26
temperature = weeklyTemperature
print("The average temperature this week is \(temperature)°F.")



let totalScore:Float=80
var writtenScore:Float=57
var assignmentScore:Float=10

var total = writtenScore + assignmentScore
print("You Gained \(writtenScore) in your Written Exam and \(assignmentScore) for your Assignments")
print("Your total score is: \(total)")

var percentage:Float=(total/totalScore)*100
if (percentage>=80.0){
    print("You got \(percentage)% in your test! Congrats")
}else{
    print("Oops, you need 805 or more to win the exam! Your Score: \(percentage)%")
}

let x = 5
let y = 4.7
let z = Double(x) + y
print(z)


let levelScore = 10
var gameScore = 0
gameScore += levelScore
print("The game's score is \(gameScore).")
var levelBonusScore = 10.0
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")
gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore).")
let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore = levelScoreDifference / levels
print("The level's average score is \(levelAverageScore).")
let averageLevelScore = Double(levelScoreDifference) / Double(levels)
print("The correct level's average score is \(averageLevelScore).")


let stringA = "Hello"
let stringB = "World!"




func concatinateString(stringA:String, stringB:String) -> String{
    return stringA + " " + stringB
    
}

let stringC = concatinateString(stringA: stringA, stringB: stringB)


print(stringC)

print("Uppercased: \(stringC.uppercased())")
print("Lowercased: \(stringC.lowercased())")

print("Has Prefix(starting) (\(stringC)) | H - \(stringC.hasPrefix("H")), h - \(stringC.hasPrefix("h"))")
print("Has Suffix(ending) (\(stringC)) |  rld - \(stringC.hasSuffix("rld")), rld! - \(stringC.hasSuffix("rld!"))")

let password = "1234567890"
let count = password.count
print("Password Length: \(count)")




print("Today is \(day).")
let hour = "6"
let minutes = "15"
let period = "PM"
var time = hour + ":" + minutes + " " + period
print("It is \(time).")
print("It is \(time) on \(day).")
let timezone = "PST"
time += " \(timezone)"
print("It is \(time).")
print("It is \(time) on \(day).")
let shortDay = day.prefix(3)
print("Today is \(shortDay).")
print("It is \(time) on \(shortDay).")
