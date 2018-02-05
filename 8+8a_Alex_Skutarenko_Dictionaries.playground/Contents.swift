

//Dictionaries Урок 8 https://www.youtube.com/watch?v=NTkGSyPyXis

var dict = ["машина" : "car", "мужик" : "man"]
dict["мужик"]

dict.isEmpty
dict.count

var dict3 = [String:String]()
dict3["комп"] = "computer"

Array(dict.keys)
Array(dict.values)

dict.updateValue("makaka", forKey: "мужик")
dict["мужик"]

dict

//let comp : String? = dict["комп"] //unwrapped

//optional binding
if let comp = dict["комп"] {
    print("\(comp)")
}

//выводим ключи и индексы
for key in dict.keys {
    print("key is \(key) and value is \(dict[key]!)") //Forced Unwrapping когда я уверен что такое значение есть
}

//используем тюплы
for (key, value) in dict {
    print("\(key), \(value)")
}


//Домашнее задание: 1) Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

var students = ["Дудинский Александр": 5, "Морозов Илья": 3, "Татьяна Ларина": 4, "Кнутов Андрей": 5, "Робко Маргарита": 2, "Никита Мошев": 5, "Павел Дуров": 3, "Олег Воротников": 4]
students["Добавлен Студент1"] = 4
students.updateValue(5, forKey: "Добавлен Студент2")
students.values

students.removeValue(forKey: "Павел Дуров")

students

//общий балл группы и средний балл
var totalMark = Int() // общий
for value in students.values {
    totalMark += value
}
totalMark

var averageMark = Double(totalMark) / Double(students.values.count)
averageMark // средний

//Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.


var cell = [Bool](repeatElement(false, count: 64))
//var white = Bool()
let i = 2, j = 2

var white = (i % 2 != j % 2)
cell[0] = white

if i % 2 == j % 2 {
    white = true
    print("The cell is White")
}else {
    white = false
    print("The cell is Black")
}











