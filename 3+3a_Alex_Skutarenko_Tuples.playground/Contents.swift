
//Урок 3 https://www.youtube.com/watch?v=5gWMKhTSf9c

//Tuples (Кортежи) - массив из разнотиповых переменных. Кортежи полезны для временной группировки связанных значений. Они не подходят для создания сложных структур данных.

//let simpleTuple  : (Int, String, Bool, Double) = (6, "Alex", true, 5.3453)
//let simpleTuple = (6, "Alex", true, 5.3453)

//Не создавая классов можно возвращать несколько параметров
//в Swift

//let (number, greetings, checking, decimal) = simpleTuple

/*number
greetings
checking
decimal

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

let (_, _, check113, _) = simpleTuple
check113

let tuple = (index:2, phrase:"Hello", registered:true, latency:5.3453)
tuple.0
tuple.1
tuple.2
tuple.3

//если что-то нужно менять то создаем var

let a = (x:1, y:2)
var b = (x:3, y:4)
b = a
b

// только если тюплы совершенно одинаковы

let totalNumber = 5
let merchantName = "Alex"

print("\(totalNumber) \(merchantName)")
print(totalNumber, merchantName)

print(simpleTuple)

//Если бы называли тюплы то лучше использовать структуру или класс

let (red, green, blue) = ("red", "green", "blue")

let color = (red:"red", green:"green", blue:"blue")
color

_______________________________________________________

Домашнее задание

1. Создать тюпл с тремя параметрами:

- максимальное количество отжиманий
- максимальное количество подтягиваний
- максимальное количество приседаний

Заполните его своими достижениями :)

Распечатайте его через println()*/

let achievementsSasha = (pushup: 10, pullup: 20, sitdown: 30)

print("Приседаний \(achievementsSasha.sitdown) Отжиманий \(achievementsSasha.pullup) Подтягиваний \(achievementsSasha.pushup)")

achievementsSasha.sitdown
achievementsSasha.2
achievementsSasha.pullup
achievementsSasha.0
achievementsSasha.pushup
achievementsSasha.1

var achievementsAlena = (pushup: 50, pullup: 60, sitdown: 70)

print("Приседаний \(achievementsAlena.sitdown) Отжиманий \(achievementsAlena.pullup) Подтягиваний \(achievementsAlena.pushup)")

achievementsAlena.sitdown
achievementsAlena.2
achievementsAlena.pullup
achievementsAlena.0
achievementsAlena.pushup
achievementsAlena.1



achievementsAlena = achievementsSasha

achievementsSasha











