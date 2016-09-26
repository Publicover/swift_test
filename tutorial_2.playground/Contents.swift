//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let individualScores = [75, 43, 105, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hellow, \(name)"
} else { let name: String? = nil
    greeting = "Hello for real this time"
}

var optionalHello: String? = "Hello"

if let hello = optionalHello , hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}


let vegetable = "red pepper"

switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins for ants in a log."
case "cucumber", "watercress":
    let vegetableComment = "For tea sandwiches"
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)"
default:
    let vegetableComment = "Everything tastes good in soup."
}



var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += 1
}

print(firstForLoop)

var secondForLoop = 0
for i in 0...4 {
    secondForLoop += 1
}

print(secondForLoop)


func greet(name: String, day: String) -> String {
    return "Hello, \(name), today is \(day)"
}

greet(name: "Anna", day: "Today")
greet(name: "Craig", day: "Friday")


//var myArray = ["apple", "orange", "banana"]
//myArray.insert("cherry", at: 2)
//myArray
//
//
//class Shape {
//    
//    var numberOfSides = 0
//    
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//    
//}
//
//
//
//var shape = Shape()
//shape.numberOfSides = 7
//var shapeDescription = shape.simpleDescription()


class NamedShape {
    
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
}


class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides length of \(sideLength)"
    }
}

let testSquare = Square(sideLength: 5.2, name: "my test square")
testSquare.area()
testSquare.simpleDescription()



class Circle: NamedShape {
    
    var radius: Double
    
    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
        if radius <= 0 {
            return nil
        }
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius of \(radius)"
    }
}

let successfulCircle = Circle(radius: 4.2, name: "successful circle")
let failedCircle = Circle(radius: -7, name: "failed circle")



class Triangle: NamedShape {
    init(sideLength: Double, name: String) {
        super.init(name: name)
        numberOfSides = 3
    }
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle"),
    Triangle(sideLength: 4.2, name: "triangle2"), Square(sideLength: 3.2, name: "square1"), Square(sideLength: 2.7, name: "square2")]
var squares = 0
var triangles = 0

for shape in shapesArray {
    if let square = shape as? Square {
        squares += 1
    } else if let triangle = shape as? Triangle {
        triangles += 1
    }
}

print("\(squares) squares and \(triangles) triangles")




























