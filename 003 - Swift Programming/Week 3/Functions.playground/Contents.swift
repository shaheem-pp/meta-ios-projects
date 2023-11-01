import Cocoa




var greeting = "Hello, playground"

func greet(greeting : String){
    print(greeting)
}

for _ in 1...10{
    greet(greeting: greeting)
}


// 1. Function for sum with parameters and with return
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 2. Function for subtraction with parameters and without return
func subtract(a: Int, b: Int) {
    let result = a - b
    print("Subtraction result: \(result)")
}

// 3. Function for division without parameters and with return
func division() -> Double {
    let dividend = 10.0
    let divisor = 2.0
    return dividend / divisor
}

// 4. Function for multiplication without parameters and without return
func multiply() {
    let num1 = 5
    let num2 = 3
    let result = num1 * num2
    print("Multiplication result: \(result)")
}

// Example usage of the functions
let sumResult = sum(a:5, b:3)
print("Sum result: \(sumResult)")

subtract(a:10, b:7)

let divisionResult = division()
print("Division result: \(divisionResult)")

multiply()
