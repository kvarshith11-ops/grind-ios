//
//  Collections.swift
//
//
//  Created by Krishna Varshith on 27/06/26.
//

var fruits = ["Mango", "Apple", "Banana", "Grapes", "Orange"]
fruits.append("Papaya")
fruits.insert("Kiwi", at: 1)
fruits.remove(at: 2)
print(fruits)

            
print(fruits.contains("Mango"))
print(fruits.first ?? "Fruit")
print(fruits.last ?? "Fruit")
print(fruits.count)

let scores = [45, 82, 91, 38, 67, 55, 73]
var highscores = [Int]()
for score in scores {
    if score > 60 {
        highscores.append(score)
    }
}
print(highscores)

let matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print(matrix[1][2])
print(matrix[2][0])

var players = ["Rohit", "Virat", "Gill", "Dhoni", "Jadeja"]
let targetIndex = 7
if targetIndex < players.count {
    print(players[targetIndex])
} else {
    print("Invalid index")
}


var playerScores: [String: Int] = ["Virat": 95, "Rohit": 88, "Gill": 72]

print(playerScores["Virat"] ?? 100)
playerScores["Dhoni"] = 80
playerScores["Gill"] = 85
playerScores.removeValue(forKey: "Rohit")
print(playerScores)


let config: [String: String] = [
    "theme": "dark",
    "language": "english",
    "region": "india"
]

for (i, j) in config {
    print("\(i): \(j)")
}

let a: Set = [1, 2, 3, 4, 5]
let b: Set = [4, 5, 6, 7, 8]
let bothCombined: Set = a.union(b)
let intersection = a.intersection(b)
let onlyA = a.subtracting(b)
print(bothCombined)
print(intersection)
print(onlyA)


let numbers = [1, 2, 2, 3, 4, 4, 5, 5, 5]
let uniqueNumbers: Set = Set(numbers)
let backToArray = Array(uniqueNumbers)
print(numbers.count)
print(backToArray.count)

func getPlayerStats() -> (name: String, runs: Int, average: Double) {
    return ("Virat", 95, 54.3)
}

let stat = getPlayerStats()
print(stat.name)
print(stat.runs)
print(stat.average)
let (name, runs, average) = getPlayerStats()
print(name)
print(runs)
print(average)

