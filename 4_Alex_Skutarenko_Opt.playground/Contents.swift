//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var apples : Int? = 5
//
//if apples == nil {
//    print("nil apples")
//} else {
//    print(apples)
//}

//Unwrapping - разворачивание, мы переводим опциональный Int в Int

//Forced Unwrapping
var apples : Int? = 5

if apples == nil {
    print("nil apples")
} else {
    let a = apples! + 2
}

//Optional binding

if var number = apples {
    number += 2
} else {
    print("nil apples")
}

let age = "20"
