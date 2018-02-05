
//Массивы Урок 7 https://www.youtube.com/watch?v=GHDwadyN_gg
let constArray = ["a", "b", "c", "d"]
constArray.count

var array = [String]() //задали тип данных в массиве

if array.isEmpty {
    print("Array is empty")
}

array += constArray

array.append("e") //добавляет элемент в конец массива

var array2 = array
array2

//array2[0]  доступ к элементу массива по индексу элемента

array2[0] = "1"
array
array2


array2[1...4] //вырезаем лементы из массива
array2[1...4] = ["0"]
array2
array2[1..<2] = ["0"] // Исключаем 4ый элемент массива

array.insert("-", at: 2)
array

let testMoney = [Int](repeatElement(100, count: 10))
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]

var sum = 0
for i in 0..<money.count {
    print("i = \(i)")
    sum += money[i]
}
sum

var slovo = "hello"
for letter in slovo.characters {
    print(letter)
}

let city = "MoscowNeverSleeps"
let slovo1 = Array(city.characters)
slovo1[0]



//дз к Уроку 7
let daysArray = [30, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let namesArray = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

//i это локальная перемена внуртри цикла (одно значение в массиве)
for i in daysArray {
    print(i)
}
daysArray

//2

for (index, value) in daysArray.enumerated() {
    print("\(namesArray[index]) - \(value)")
}

let boys = ["Sasha", "Pasha", "Sergey", "Vova", "Mark", ]
let girls = ["Olya", "Anya", "Valya", "Zina", "Alena", ]

for (index, value) in boys.enumerated() {
    print("\(boys[index]) - \(girls[index])")
}

//3
let monthsAndDays = ["Январь" : 30, "Февраль" : 28, "Март" : 31, "Апрель" : 30, "Май" : 31, "Июнь" : 30, "Июль" : 31, "Август" : 31, "Сентябрь" : 30, "Октябрь" : 31, "Ноябрь" : 30, "Декабрь" : 31]

for (index, value) in monthsAndDays {
    print("\(index) месяц - \(value) дней")
}

//От Скутеренко
var arrayX = [(String, Int)]() // Объявляем пустой массив из двух индексов и ключей
for i in 0..<daysArray.count { //каждый номер элемента в массиве дней в месяце
    let month = (month:namesArray[i], day:daysArray.reversed()[i]) // создаем тюпл с параметрами
    arrayX.append(month)
}

print(arrayX)

//4- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
let data = (month: 12, day: 2) //искомая дата

var days = 0 //допустим у нас 0 дней
for i in 0..<(data.month - 1) { //
    days += daysArray[i]
}
days += data.day

//let optDays = [1, 2, nil, 50, nil]
//var opts = [Int?]()
let opts = [1, 2, nil, 4, 7]

var sum1 = 0
for value in opts {
    if let value = value {
        sum1 += value
    }
}

let abc = "bauhbchsdbcjhasbcjhbsdkc"
var characters = abc.characters //символы в строке abc
var charArray = [String]() // пустой массив из элементов string

for char in characters {
    //charArray.append(String(char))
    charArray.insert(String(char), at: 0) // в обратном порядке (вставляем элемент на нулевое место)
}
print(charArray)








