import UIKit

var greeting = "Hello, playground"
let randomScore = Int.random(in: 0...99)
if randomScore > 90 {
    print("TOPPER")
} else if randomScore > 70 {
    print("BRIGHT")
} else if randomScore > 50 {
    print("OKAY")
} else if randomScore > 30 {
    print("AVERAGE")
} else {
    print("POOR")
}
let point = (1, 1)

switch point {
case (0, 0):
    print("Origin")
case (_, 0):
    print("X Axis")
default:
    print("Somewhere")
}
for i in 1...5 {
    print(i)
    for j in 1...5 {
        print(j)
        if j == 3 {
            break
        }
    }
}
outerloop: for i in 1...3{
  
  innerloop: for j in 1...3 {
    
    if j == 3 {
      continue outerloop
    }
    
    print("i = \(i), j = \(j)")
  }
}
func multiplyFunction(a: Int, b: Int) -> Int {
    a * b
}

func multiply(_ a: Int,_ b: Int) -> Int {
    return a*b
}
multiplyFunction(a: 10, b: 10)
multiply(10, 20)

//Reversing words in string
let sentence = "ordered words in a sentence"
let separatedWords =  sentence.split(separator: " ")
let reversedSentence = separatedWords.reversed().joined(separator: " ")
print(reversedSentence)

let value = [Any]()
var value2 = [Int]()
print(value)


func calculateAverage(grades: [Double])-> Double{
    var total = 0.0
    for grade in grades {
        total = total + grade
    }
    return total/Double(grades.count)
}

func studentReport(name: String, age: Int, grades: [Double], email: String?) {
    guard !grades.isEmpty else {
        print("No grades provided")
        return
    }
    let averageMarks = calculateAverage(grades: grades)
    
    print("--- Student Report ---")
    print("Name: \(name)")
    print("Age: \(age)")
    print("Email: \(email ?? "No email provided")")
    print("Average Grade: \(averageMarks)")
    switch averageMarks{
    case 90...100:
        print("Grade: A")
    case 80...89:
        print("Grade: B")
    case 70...79:
        print("Grade: C")
    case 60...69:
        print("Grade: D")
    default:
        print("Grade: F")
    }
}

studentReport(name: "Krishna", age: 22, grades: [40.4, 90.8, 99.0, 88.0], email: nil)
