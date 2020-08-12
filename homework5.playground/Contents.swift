import UIKit

//ex 1
let myTeam = "Girls"
let resultsOfGames = ["Wizards": "104:45",
                      "Beatles": "102:101"]
for (teamName, teamScore) in resultsOfGames {
print("\(myTeam) against \(teamName) scored - \(teamScore)")
}
// ex 2  - I didn't understand the "you have only 1x by 5 - 500 EUR", but the func works and the ints in the array can be changed :)
let wallet = [5, 5, 5, 5, 5]
func calculateCash() -> Int {
    var sum = 0
    for money in wallet {
       sum += money
    }
   return sum
}
var result = calculateCash()
print(result)
//ex 3
func isEvenNumber(_ a: Int) -> Bool {
    var test = true
    if a % 2 == 0 {
        test = true
    } else {
        test = false
    }
  return test
}
    var number = isEvenNumber(5)
    print(number)
// ex 4.1
func createArray2 (start a: Int, end b: Int) -> Int {
    var x = 0
    for i in a...b {
x += i
    }
    return x }
    var res2 = createArray2 (start: 1, end: 100)
    print(res2)
//ex 4.2 (I didn't get what exactly i had to do with ex 4,  but these 2 were what i thought might be it
func createArray (start a: Int, end b: Int) -> Array<Int> {
    var array = [Int]()
    for i in a...b {
        array.append(i)
    }
    return array
}
var res = createArray (start: 1, end: 100)
print(res)
// ex5
let odd = res.filter { $0 % 2 == 1 }
print(odd) 
