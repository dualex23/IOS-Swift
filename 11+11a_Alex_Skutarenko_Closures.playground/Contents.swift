//: Playground - noun: a place where people can play

import UIKit

let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10, 4, 3, 1, 8, 11]

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    
    for i in array {
        if f(i) {
            filtered.append(i)
        }
    }
    
    return filtered
}

//func compare(i: Int) -> Bool {
//    return i % 2 == 0
//}

filterArray(array: numbers, f: {(i: Int) -> Bool in
    return i % 2 == 0
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
    return i % 3 == 0
})


// #MARK: simple form

//Сокращенная форма
filterArray(array: numbers, f: {i in
    return i % 2 == 0
})
//Если у нас одна команда

filterArray(array: numbers, f: {i in i % 2 == 0 })

filterArray(array: numbers, f: {$0 % 3 == 0})


//var array = [1,2,3]
//
//filterArray(array: numbers) { value in
//    
//    for include in array {
//        if include == value {
//            return true
//        }
//    }
//    return false
//}

var count = 0

//var array = [1, 2, 3, 5, 7, 123]
//
//filterArray(array: numbers) { value in
//    
//    for include in array {
//        count += 1
//        if include == value {
//            return true
//        }
//    }
//    return false
//}
//
//var dict = [Int:Bool]()
//for value in array {
//    dict[value] = true //для каждого Int мы будем ложить Int как ключ
//}


//
//filterArray(array: numbers) { value in
//    count += 1
//    return dict[value] != nil
//}
//count



//Еще курс: 

//(параметры) -> возвращаемый тип in
//    операторы

//1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

//func nothing(num: [Int]) { i in
//    for number in num {
//        
//    }
//}

func sumNum(closures: () -> () ) {
    print("Closure Stuff")
    closures()
}

sumNum() {
    print("lalala")
}


//2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
let names = [123,2211,387,42,5188]

func backward(s1: Int, s2: Int) -> Bool {
    return s1 < s2
}

var reversedNames = names.sorted(by: backward)

    
//func parametr(arr: [Int], clos: (Int,Int) -> Bool) -> [Int] {
//    var massNames = [Array]()
//    for i in arr {
//        if clos(name, i) {
//            massNames.
//        }
//    }
//    return $0 > $1
//}
//parametr(arr: names) {
//    $0 > $1
//}

//3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.


func strToStr(array: [Int], closure: (Int?, Int) -> Bool) -> Int {
    var number : Int?
    
    for i in array {
        if closure(number, i) {
            number = i
        }
    }
    
    return number ?? 0
}

let nums = [1,2,3,4,5,6,7,8,9,10]

strToStr(array: numbers) {
    $0 == nil || $0 == $1
}

//4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы (Использоваьт приоритеты)


func priority(string: String) -> Int {
    switch string.lowercased() {
    case "а", "е", "и", "о", "у", "ы", "э", "я":
        return 0
    case "б"..."щ" :
        return 1
    case "0"..."9" :
        return 2
    default:
        return 3
    }
}
let a = "а"//берем для приоритета
let b = "-"

switch (priority(string: a),priority(string: b)) { //передаем тюпл из приоритетов
case let(x,y) where x > y : print(a)
case let(x,y) where x < y : print(b)
default: print(a <= b ? a : b) // тернарный оператор
}

let stro4ka = "риыНтРнпгцу8и2833иш1вщДШИДШФЫИСДЫФИсриссиридс982899);(.,:%№Ы%,:Ф.Ы.Сфгисфг823г"

var array = [String]()

for c in stro4ka.characters {
    array.append(String(c))
}
array

let sort = array.sorted {
    
    switch (priority(string: $0),priority(string: $1)) { //передаем тюпл из приоритетов
    case let(x,y) where x < y : return true
    case let(x,y) where x > y : return false
    default: return $0.lowercased() <= $1.lowercased()
    }
    
}
sort







