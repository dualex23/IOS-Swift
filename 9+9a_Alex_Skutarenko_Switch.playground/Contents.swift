//Урок №9 Switch

let age = 23
var name = "Alex"

switch age {
case 0...16:
    print("Школота")
case 17...21:
    print("Студент")
case 22...50: break

default:
    break
}

//break - выбрасывает нас

for i in 0..<20 { // перебираем элементы от 0 до 20
    if i == 10 { // когда доходим до 10 прерываемся
        break // нас выбрасывает из работы цикла
    }
    print(i)
}


switch name {
case "Alex" where age < 50: // проверка дополнительного условия
    print("hey Alex")
case "Alex" where age < 50:
    print("bye Alex")
default:
    break
}

//обработка тюпла
let tuple = (name, age)

switch tuple {
case ("Alex", _):
    print("Нас не интересует возраст Alex")
case ("Alex", 60):
    print("Alex is 60")
case ("Alex", 59):
    print("Alex is 59")
default:
    break
}

switch tuple {
case (_, let number) where number >= 65 && number < 70:
    print("Value Unbinding")
default:
    break
}

var optional : Int? = 5
if let a = optional {
    print("\(a) не равно nil")
}

let point = (5, 5)
switch point {
case let (x, y) where x == y:
    print("x == y")
case let (x, y) where x == -y:
    print("x == -y")
case let (_, y) where y < 0:
    print("y < 0")
default:
    break
}





//ДЗ 1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.

let str200 = "Созда5ть строку произвольного текста, минимум 200 сим,волов. Используя цикл и оператор свит-ч посч/итать количество гласных, согл-асных, цифр и символов. Создайте свитч который приним1ает возр3аст человека ."

str200.characters.count
var glasnie = [Character]()
var soglasnie = [Character]()
var numbers = [Character]()
var symbols = [Character]()

for i in str200.characters {
    switch i {
    case "а", "и", "о", "е", "я" :
        glasnie.append(i)
    case "б", "в", "г", "д", "ж", "з", "й", "л", "м", "н", "р", "к", "п", "с", "т", "ф", "х", "ц", "ч", "ш" :
        soglasnie.append(i)
    case "1", "2", "3", "4", "5" :
        numbers.append(i)
    case " ", ".", ",", "-", "/" :
        symbols.append(i)
    default:
        break
    }
}

glasnie.count // посчитали гласные
soglasnie.count // посчитали согласные
numbers.count // посчитали числа
symbols.count // посчитали символы


let age1 = 23
var name1 = "Alex"

switch age1 {
case 0...16:
    print("Школота")
case 17...23:
    print("Студент")
case 24...50:
    print("Сознательный возраст")
case 51...80:
    print("Пенсия")
    
default:
    break
}


//У вас есть имя отчество и фамилия студента (русские буквы). Если Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.

let studentName = (fio: "Дудинский", name: "Александр", father: "Константинович")
//studentName.firstName.hasPrefix("")

switch studentName {
case _ where studentName.name.hasPrefix("А") || studentName.name.hasPrefix("О"):
   print("Дорогой \(studentName.name)")
case _ where studentName.father.hasPrefix("В") || studentName.father.hasPrefix("Д") :
    print("Дорогой \(studentName.name) \(studentName.father)")
case _ where studentName.fio.hasPrefix("Е") || studentName.fio.hasPrefix("З") :
    print("Дорогой \(studentName.fio) \(studentName.name) \(studentName.father)")
default:
    print("Увы, но такого человека не существует")
}

//Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.

let cells = (x: 1...10, y: 1...10) //поле 10х10

let shipOne = (x: 5, y: 5, w: 1, h: 1)
let shipTwo = (x: 5, y: 5, w: 1, h: 2)
let shipThree = (x: 5, y: 5, w: 1, h: 3)
let shipFour = (x: 5, y: 5, w: 1, h: 4)

var shoot = (x: 3, y: 4)

switch shoot {
case (4...5, 2...4) :
    print("Ранил")
default:
    print("Мимо")
}














