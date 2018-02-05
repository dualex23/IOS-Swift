//: Playground - noun: a place where people can play

import UIKit

//Шаблон значения
//func название(название параметра: Тип, название параметра: Тип) -> Тип возвращаемого значения {
//    
//}

func printSomeStupidText() {
    print("Hello")
}
printSomeStupidText()

func sum(a: Int, b: Int) -> String {
    let total = a + b
    return "Сумма \(a) + \(b) = \(total)"
}

let result28 = sum(a: 5, b: 5)

var num = 3213
if num % 2 == 0 {
    print("Четное")
}else {
    print("Нечетное")
}

//Гипотенуза
func sides(a:Double, b:Double) -> Double {
    let c = sqrt(a*a + b*b)
    return c
}
sides(a: 8, b: 6)

func repeatedString(string:String, count: Int) -> String {
    for _ in 1...count {
        print(string)
    }
    return string
}
repeatedString(string: "Мама я в Дубае", count: 5)

//Skutarenko
//DRY - do NO repeat yourself

//Считаем сумму денег в кошельке
//func calculateMoney(wallet: [Int]) {
//    var summa = 0
//    for value in wallet {
//        summa += value
//    }
//    print("summa = \(summa)")
//}
//var wallet = [100, 5, 126, 1, 0, 88]
//
//calculateMoney(wallet: wallet)


//func calculateMoney(wallet: [Int]) -> Int {
//    var summa = 0
//    for value in wallet {
//        summa += value
//    }
//    return summa
//}
//var wallet = [100, 5, 126, 1, 0, 88]
//
//var money = calculateMoney(wallet: wallet)
//
//money

//Считаем количество нужных нам купюр
//func calculateMoney(wallet: [Int], type: Int) -> Int {
//    var summa = 0
//    for value in wallet {
//        if value == type {
//            summa += value
//        }
//    }
//    return summa
//}
//var wallet = [100, 5, 126, 1, 0, 88, 5, 102, 5, 7, 5]
//
//var money = calculateMoney(wallet: wallet, type: 5)
//
//money

//считаем количество найденных банкнот
//func calculateMoney(wallet: [Int], type: Int) -> (summa: Int, count: Int) {
//    var summa = 0
//    var count = 0
//    
//    for value in wallet {
//        if value == type {
//            summa += value
//            count += 1
//        }
//    }
//    return (summa, count)
//}
//var wallet = [100, 5, 126, 1, 0, 88, 5, 102, 5, 7, 5]
//
//var money = calculateMoney(wallet: wallet, type: 5)
//
//money


//Делаем количество купюр как Oprional (на случай если таких нет в кошельке)
//func calculateMoney(wallet: [Int], type: Int? = nil) -> (summa: Int, count: Int) {
//    var summa = 0
//    var count = 0
//    
//    for value in wallet {
//        if (type == nil) || value == type {
//            summa += value
//            count += 1
//        }
//    }
//    return (summa, count)
//}
//var wallet = [100, 5, 126, 1, 0, 88, 5, 102, 5, 7, 5]
//
//var (money, count) = calculateMoney(wallet: wallet)
//var (money, count) = calculateMoney(wallet: wallet, type: nil)
//
//money
//count

//func calculateMoney(inWallet wallet: [Int], withType type: Int? = nil) -> (summa: Int, count: Int) {
//calculateMoney(inWallet: [Int], withType: Int?)

func sayHi() {
    print("hi")
}
sayHi()

//var hi = sayHi()

//Домашнее Задание

//1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации. 

func heart() -> String {
    return "❤️💛💚"
}
print("Лови сердечки \(heart())")

//2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль

//Вариант 1
func colorOfTheCell(number1: Int, number2: Int) -> String {
    var cell = ""
    if number1 % 2 == number2 % 2 {
        cell = "white"
    }else {
        cell = "black"
    }

    return cell
}

colorOfTheCell(number1: 2, number2: 3)

//Вариант 2
func isCellBlackOrWhite(row: Int, col: Int) -> String {
    return (row % 2 == col % 2) ? "white" : "black"
}
isCellBlackOrWhite(row: 4, col: 4)

//3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

//Reverse for Int's array
func poryadokInt(array: [Int]) -> [Int] {
    return array.reversed()
}
poryadokInt(array: [1,2,3,4,5,6,7,8,9,10])

//Reverse for Str's array
func poryadokStr(array: [String]) -> [String] {
    return array.reversed()
}
poryadokStr(array: ["1","2","3","4","5"])

//Sequence to Array
func sequenceToArray(sequence: Int...) -> [Int] {
    var sequenceArray = [Int]()// Создаем пустой массив
    for item in sequence {
        sequenceArray.append(item)//Добавляем элементы в пустой массив
    }
    
    var returnSequenceArray = [Int]()
    let reversedSequenceArray = poryadokInt(array: sequenceArray)
    for element in reversedSequenceArray {
        returnSequenceArray.append(element)
    }
    return returnSequenceArray
}
sequenceToArray(sequence: 1,2,3,4,5)

//Более простой вариант с использованием уже имеющихся функций
func revArray(sequence: Int...) -> [Int] {
    var array = [Int]()
    for i in sequence {
        array += [i]
    }
    return poryadokInt(array: array)
}
revArray(sequence: 12,13,14,15)

//Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
func stringModifying(str: String) -> String {
    var stroka = String()
    let numbers = ["1":"one", "2":"two"]
    
    for char in str.characters {
        switch char {
        case ",", ".", "!", "?", ":", ";", "<", ">":
            stroka += "???"
        case "o", "e", "a", "i":
            stroka.append(String(char).uppercased())
        case "W", "M", "D", "H", "L", "P":
            stroka.append(String(char).lowercased())
        case "1", "2":
            stroka.append(numbers[String(char).lowercased()]!)
        default:
            stroka.append(String(char))
        }
    }
    return stroka
}
stringModifying(str: "w2orWM2lDd,w2eHd:wLPefao12i1sni")

























