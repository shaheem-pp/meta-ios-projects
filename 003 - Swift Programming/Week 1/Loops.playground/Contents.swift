import Cocoa


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")


let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
var square = 25
var diceRoll = 6
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")


let numberPlate = "WW87GP"
for character in numberPlate {
    print("character is = \(character)")
}

var unoRound = 1

while unoRound < 11{
    print("Round \(unoRound) begins")
    print("...")
    print("...")
    print("...")
    unoRound += 1
}
print("Round Complete")


var firstDice = Int.random(in: 1...6)
var secondDice = Int.random(in: 1...6)
var rolled = 1
while firstDice != secondDice {
    print("firstDice -> \(firstDice)")
    print("secondDice -> \(secondDice)")
    rolled += 1
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
}
print("You rolled a double \(firstDice) after rolling for \(rolled) times.")


let levels = 10
let freeLevels = 4
let bonusLevel = 3
for level in 1...levels {
  if level == bonusLevel {
    print("Skip bonus level \(bonusLevel).")
    continue
  }
  print("Play level \(level).")
  if level == freeLevels {
    print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
    break
  }
}
