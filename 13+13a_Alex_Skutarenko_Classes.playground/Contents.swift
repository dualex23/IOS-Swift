//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
////Создание классов
//class StudentClass {
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//
//struct StudentStruct {
//    var name : String
//    var age : Int
//    
//    
//}
//
//var stClass = StudentClass(name: "Alex", age: 28)
//stClass.age
//stClass.name
//
//var stStruct1 = StudentStruct
//
//stStruct1.init(name: "Alex", age: 28)
//





//1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).

//struct Student {
//    var firstName : String
//    var secondName : String
//    var bithYear : Int
//    var averageMark : Double
//}
//
//var stAlex = Student.init(firstName: "Alex", secondName: "Rudven", bithYear: 1989, averageMark: 5.0)
//var stBob = Student.init(firstName: "Bob", secondName: "Dudinskiy", bithYear: 1889, averageMark: 4.0)
//var stMarkAvrelij = Student.init(firstName: "Mark", secondName: "Avrelij", bithYear: 2000, averageMark: 3.4)
//var stPush = Student.init(firstName: "Push", secondName: "Smith", bithYear: 1909, averageMark: 4.7)
//var stVlad = Student.init(firstName: "Vlad", secondName: "Dudinskiy", bithYear: 1981, averageMark: 4.1)
//
//let journal = [stAlex, stBob, stMarkAvrelij, stPush, stVlad]
//
////2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
//
//func studentsArray(students: [Student]) {
//    var count = 0
//    for student in students {
//        count += 1
//        print("\(count).\t\(student.firstName)\t \(student.secondName)\t\(student.bithYear)\t \(student.averageMark)")
//    }
//}
//
//print("\nЗадание 2 - вывод в консоль")
//
//studentsArray(students: journal)
//
////3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
//
//let sortedAverageMark = journal.sorted { (a1: Student, a2: Student) -> Bool in
//    return a1.averageMark > a2.averageMark
//}
//
//print("\n Задание 3 - сортировка по среднему баллу")
//studentsArray(students: sortedAverageMark)
//
////4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
//
//let sortingBySecondName = journal.sorted { (stud1: Student, stud2: Student) -> Bool in
//    if stud1.secondName != stud2.secondName {
//        return stud1.secondName < stud2.secondName
//    }else{
//        return stud1.firstName < stud2.firstName
//    }
//}
//
//print("\n Задание 4")
//studentsArray(students: sortingBySecondName)
//
//
////5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива. 
//
//var journal2 = journal
//journal2.count
//
//journal2[0].firstName = "Pavel"
//journal2[1].bithYear = 1555
//journal2[2].secondName = "Nahal"
//
//journal
//print("\n Задание 5")
//studentsArray(students: journal2)


//6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?

//Создаем класс StudentClass от структуры Student
class StudentClass {
    var name : String
    var second : String
    var birth : Int
    var average : Double
    
    init(firstName: String, secondName: String, bithYear: Int, averageMark: Double) {
        self.name = firstName
        self.second = secondName
        self.birth = bithYear
        self.average = averageMark
    }
}

var student1 = StudentClass(firstName: "Alex", secondName: "Rudven", bithYear: 1989, averageMark: 5.0)
var student2 = StudentClass(firstName: "Bob", secondName: "Dudinskiy", bithYear: 1889, averageMark: 4.0)
var student3 = StudentClass(firstName: "Mark", secondName: "Avrelij", bithYear: 2000, averageMark: 3.4)
var student4 = StudentClass(firstName: "Push", secondName: "Smith", bithYear: 1909, averageMark: 4.7)
var student5 = StudentClass(firstName: "Vlad", secondName: "Dudinskiy", bithYear: 1981, averageMark: 4.1)

var arraySt = [student1, student2, student3, student4, student5]

























