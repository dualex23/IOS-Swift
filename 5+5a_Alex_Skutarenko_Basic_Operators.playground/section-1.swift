//Урок 5 Базовые операторы

let total = ((5 + 6) - (8 * 3)) - (5 / 10) //+ ++5 + --7 - 5-- + 7++

let div = 10 / 3
let rest = 13 % 3

4923764283415 % 101


var small : UInt8 = 0xff

//small = 0
//small = small - 1

// &+ &* &/ &- &%
small = small &+ 5

let str = "Hi, " + "there!"

let a = 6
let b = 3

// >, <, >=, <=, ==, !=, ===, !==
if (a >= b) {
    print("yes")
} else {
    print("no")
}

var c : Int

/*
if a < b {
    c = a
} else {
    c = b
}
*/

c = (a < b) ? a : b

let text = "123iuhh"

let n = Int(text)
n

/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/
/*
if let opt = n {
    c = opt
} else {
    c = 0
}
*/

c = n ?? 0


var sum = 5
sum = sum + 1
sum += 1

var good = true

good = !good
// && = *, || = +
if good {
    print("good")
} else {
    print("bad")
}

/*
true && true = true
true && false = false
false && true = false
false && false = false

true || true = true
true || false = true
false || true = true
false || false = false
*/

let i = 5
let j = 6
let k = 7
let m = 8

if (i < 3) && (j > k) && ((m != k) || m > i) {
    
}

0...5
0..<5

for i in 0..<5 {
    print("\(i)")
}


let dateBirth = 53
var secondsTo = (jan + dateBirth)*60*60
print("Секунд до моего дня рождения с начала года равно \(secondsTo)")


let firstQuat = ("Jan", "Feb", "Mar")
let secondQuat = ("Apr", "May", "Jun")
let thirdQuat = ("Jul", "Aug", "Sep")
let fourthQuat = ("Oct", "Nov", "Dec")

let dateBirth = 353

let daysInfirstQuat = 30 + 28 + 31
let daysInsecondQuat = 30 + 31 + 30
let daysInthirdQuat = 31 + 31 + 30
let daysInfourthQuat = 31 + 30 + 31

if dateBirth <= daysInfirstQuat {
    print("I was born in First quater")
}else if dateBirth <= daysInfirstQuat + daysInsecondQuat && dateBirth > daysInfirstQuat {
    print("I was born in Second quater")
}else if dateBirth <= daysInfirstQuat + daysInsecondQuat + daysInthirdQuat && dateBirth > daysInfirstQuat + daysInsecondQuat {
    print("I was born in Third quater")
}else {
    print("I was born in Fourth quater")
}

//новое изменение и даже не одной
//наш первый commit











