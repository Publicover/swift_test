//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

widthLabel

//let label_again = label + width

let new_var: Float = 4.0

var occupations = [String: String]()

occupations["me"] = "bird helper"

occupations

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Jim"
var greeting = "hey"
if let name = optionalName {
    greeting = "hey, /(name)"
}
greeting




