//
//  CLosures and Higher Order Functions.swift
//
//
//  Created by Krishna Varshith on 27/06/26.
//
func makeGreeter() -> () -> Void {
    var message = "Hello"
    let greeter = {
        print(message)
    }
    return greeter
}

let greeter = makeGreeter()
greeter()

var multiply: (Int, Int) -> Int = {
    (a,b) in a * b                  // or simply $0 * $1
}
print(multiply(10,10))

// closure definition
var findSquare: (Int) -> Int = {
    (a) in a * a
}

// closure call
var result = findSquare(3)
print("Square:",result)

// closure definition
var findSquare2 = { (num: Int) -> (Int) in
  var square = num * num
  return square
}

// closure call
var result2 = findSquare2(3)

print("Square:",result2)

func downloadImage(url: String, onSuccess: (String) -> Void, onFailure: (String) -> Void) {
    // Hit server
    let number = Int.random(in: 1...100)
    if number < 50 {
        onSuccess ("Image downloaed!")
    } else {
        onFailure("Failed for some reason!")
    }
}
downloadImage(url: "https:www.abc.com/image1", onSuccess: { imageData in
    print(imageData)
    }, onFailure: { error in
        print("Error Occurred!: \(error)")
    })


let rawValues = ["1", "two", "3", "four", "5"]
let numbers = rawValues.compactMap { Int($0) }  // [1, 3, 5]
print(numbers)

let nested = [[1, 2, 3], [4, 5], [6, [7,8]]]
let flat = nested.flatMap { $0 }    // [1, 2, 3, 4, 5, 6]
print(flat)

import Foundation

let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(numbers2.filter { ($0%2 == 0) })

let names = ["virat", "rohit", "gill", "dhoni"]
print(names.map{ $0.capitalized })

let score = [45, 82, 91, 38, 67, 55, 73]
print(score.reduce(0, +))
print(score.reduce(0) {addition, current in
    addition + current
})

let rawValues2 = ["1", "two", "3", "four", "5", "six", "7"]
print(rawValues2.compactMap { Int($0) })

let nested2 = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]
print(nested2.flatMap{$0})

let players = ["Rohit", "Virat", "Gill", "Dhoni", "Jadeja"]
print(players.sorted{ $0 > $1})

let scores = [45, 82, 91, 38, 67, 55, 73]
let filters = scores.filter { $0 > 60}
    .map { "Score: \($0)" }
print(filters)


struct Student {
    let name: String
    let grade: Int
    let age: Int
    let email: String?
}

let students = [
    Student(name: "Arjun", grade: 78, age: 20, email: "arjun@gmail.com"),
    Student(name: "Priya", grade: 45, age: 22, email: nil),
    Student(name: "Rahul", grade: 91, age: 19, email: "rahul@gmail.com"),
    Student(name: "Sneha", grade: 38, age: 21, email: nil),
    Student(name: "Karan", grade: 65, age: 20, email: "karan@gmail.com"),
    Student(name: "Divya", grade: 55, age: 23, email: "divya@gmail.com"),
    Student(name: "Rohan", grade: 42, age: 18, email: nil),
    Student(name: "Meera", grade: 88, age: 22, email: "meera@gmail.com")
]

print(students.filter { $0.grade > 50}.map{ $0.name}.sorted{ $0 < $1})
print(students.compactMap{$0.email})
let total = students.reduce(0) { result, student in
    result + student.grade
}
let average = total/students.count
print(average)

//Write a function called applyTransformation that:
//
//Takes an array of Ints
//Takes a closure that transforms one Int into another Int
//Returns a new array with the transformation applied
//
//Then call it three times:
//
//Double every number
//Square every number
//Return only the absolute value (use abs())

func applyTransformation(array :[Int], transformation: (Int) -> Int) -> [Int]{
    return array.map(transformation)
}

print(applyTransformation(array: ([1,2,3,4,5]), transformation: { (num) -> Int in
    return num * 2
}))

print(applyTransformation(array: ([1,2,3,4,5]), transformation: { (num) -> Int in
    return num * num
}))

print(applyTransformation(array: ([-3, -2, -1, 0, 1]), transformation: { (num) -> Int in
    let numbers = abs(num)
    return numbers
}))

//Write three closures and store them in variables:
//
//isEven — takes an Int, returns Bool
//isLongName — takes a String, returns Bool if length is greater than 4
//gradeToLetter — takes an Int, returns a String — A for 90+, B for 75+, C for 50+, F for below 50


var isEven: (Int) -> Bool = { num in
    return num % 2 == 0
}
print(isEven(2))

var isLongName: (String) -> Bool = { name in
    if name.count > 4 {
        return true
    } else { return false }
}
print(isLongName("String"))

//In a single chain on the students array:
//
//Filter students who passed (grade above 50)
//Sort by grade descending
//Map to a formatted string: "1. Rahul — 91", "2. Meera — 88" etc. (with ranking)
//Print each one using forEach

let chaining = students.filter { $0.grade > 50 }.sorted{ $0.grade > $1.grade}
print(chaining)

let mapping: [()] = students.map{ student in
    print("\(student.name) — \(student.grade)")
}

let ranked: [()] = chaining.enumerated().map{ (index, student) in
    print("\(index + 1). \(student.name) — \(student.grade)")
}
ranked.forEach { print($0)}


//Problem 4 — makeCounter with a twist
//Write a makeCounter function that:
//
//Takes a step: Int parameter
//Returns a closure that increments by that step each time

func makeCounter(step: Int) -> () -> Int {
    var value:Int = 0
    let incrementedValue = {
        step + value
    }
    return incrementedValue
}

let countByTwo = makeCounter(step: 2)
print(countByTwo())
print(countByTwo())


