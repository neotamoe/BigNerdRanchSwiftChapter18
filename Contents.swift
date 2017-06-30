//: Playground - noun: a place where people can play

import UIKit
// VALUE SEMANTICS
var str = "Hello, playground"
var playgroundGreeting = str
//str and playgroundGreeting are the same value
playgroundGreeting += "! How are you today?"
str
// after playgroundGreeting's value is changed, they are not longer the same value
// when str was assigned to playgroundGreeting, it passes a copy of str's value, but they do not point to the same underlying instance
// string is a struct (see Documentation) which means String is a value type.  Array, Dictionary, Int and String are all implemented as structs so are all value types.

// REFERENCE SEMANTICS
class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate
// at this point there are two constants but both pointing to the same instance of GreekGod class.
anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name
// when you assign an instance of a class to a constnat or variable, that constant or variable gets a reference to the instance

struct Pantheon {
    var chiefGod: GreekGod
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
// the next line gives a compiler error.  pantheon is immutable since it is "let".  value types declared as constants cannot have their properties changed, even if they are declared with var in the type's original implementation.
//pantheon.chiefGod = zeus

zeus.name
zeus.name = "Zeus Jr."
zeus.name
//hmmm...even though zeus is written with let, you can still change it's property....zeus is an instance of a reference type so it refers to the instance of GreekGod made on line 35. 

// careful when using a reference type inside a value type (like adding property of class GreekGod to Pantheon).
pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name

// copies in Swift are shallow (no support to make deep copies)
let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy
// shallow copying does not create a distinct copy of an instance; it provides a duplicate of the instance's reference

// EQUALITY VS IDENTITY
// equality referes to two instances having the same values for their observable characteristics such as two instances of the String type that have the same text
// identity refers to whether two variables or constants point to the same instance in memory
// two constants or variables can be equal (have same values) yet not be identical (may point to different instances of a given type)

// USING STRUCTS VS CLASSES
// generally: 1) if you want a type to be passed by value, use a struct.  this makes sure the type is copied when assigned or passed into a function's argument.
// 2) if the type does not need to support subclasses inheriting from it, then use a struct.
// 3) if behavior you want to represent in a type is relatively straightforward and encompasses a few simple values, consider starting with a struct.  you can change to a class later if needed.
// 4) use class in other cases.




