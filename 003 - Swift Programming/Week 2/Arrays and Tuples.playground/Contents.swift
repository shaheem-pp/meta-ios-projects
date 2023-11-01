import Cocoa

var greeting = "Hello, playground"

var levelScores: [Int] = []
if levelScores.count == 0 {
    print("Start playing the game!")
}
let firstLevelScore = 10
levelScores.append(firstLevelScore)
print("The first level's score is \(levelScores[0]).")
let levelBonusScore = 40
levelScores[0] += levelBonusScore
print("The first level's score is \(levelScores[0]).")
let freeLevelScores = [20, 30]
levelScores += freeLevelScores
let freeLevels = 3
if levelScores.count == freeLevels {
    print(
        "You have finished playing the free version of the game. Buy the game to play its full version."
    )
    levelScores = []
    print("Game restarted!")
}


let credentials = ("", -1111)
if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid credentials!")
} else {
    print("The username is \(credentials.0) and the password is \(credentials.1).")
}
let fullCredentials = (password: "pass", passcode: 1111)
if fullCredentials.password == "" || fullCredentials.passcode < 0 {
    print("Invalid credentials!")
} else {
    print("The password is \(fullCredentials.password) and the passcode is \(fullCredentials.passcode).")
}


