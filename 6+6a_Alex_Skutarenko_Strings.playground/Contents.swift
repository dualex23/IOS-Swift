//Шахматная доска
var x = 2
var y = 1

if (x >= 1 && y >= 1 && x <= 8 && y <= 8) && (x % 2 == 0 && y % 2 != 0) {
    print("Color is white")
}else if (x > 8 || y > 8 || x < 1 || y < 1) {
    print("Ooops! There are only 8 sqwuares")
}else {
    print("Color is black")
}


//Скутеренко
let cell = (x:3, y:1)

if cell.x % 2 == cell.y % 2 {
    print("Black")
}else {
    print("White")
}


let number1 = "12"
let number2 = "hello"
let number3 = "12 alenka"
let number4 = "888"
let number5 = "1.0"

var n1 = Int(number1) ?? 0
var n2 = Int(number2) ?? 0
var n3 = Int(number3) ?? 0
var n4 = Int(number4) ?? 0
var n5 = Int(number5) ?? 0

var sumNumbers : Int
sumNumbers = n1 + n2 + n3 + n4 + n5
sumNumbers

let myWord = "Amsterdam"
var char = myWord.characters
var letter : Character = "d"
var index = 1


for i in char {
    if i == letter {
        print("My character is \(letter) and index is \(index)")
    }
    index += 1
}