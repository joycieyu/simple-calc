//
//  main.swift
//  Simple Calc
//
//  Created by Joycie Yu on 10/10/17.
//  Copyright © 2017 Joycie Yu. All rights reserved.
//

import Foundation


print("Enter an expression separated by returns:")

var response = readLine(strippingNewline: true)!
var num = Int(response)
var numbers : [Int] =  []
var result = 0

while (num != nil) {
    numbers.append(num)
    response = readLine(StrippingNewLine: true)!
    num = Int(response)
}


switch response {
case "count":
    result = numbers.count
    
case "avg":
    result = (numbers.reduce(0, combine:+)) / numbers.count
    
case "fact":
    if (numbers.count == 1) {
        var factSum = 1
        for var i : int = 1; i <= numbers.first; i += 1 {
            factSum = factSum * i;
        }
        result = factSum;
    }
case "%":
    var lastLine = readLine()!
    var lastNum = Int(lastLine) !
        result = (numbers[0]).truncatingRemainder(dividingBy: numbers.last)!
    
case "+":
    var lastLine = readLine()
    var lastNum = Int(lastLine)
    result = numbers[0] + lastNum
    
case "-":
    var lastLine = readLine()!
    var lastNum = Int(lastLine)
    result = numbers[0] - lastNum
    
case "/":
    var lastLine = readLine()!
    var lastNum = Int(lastLine)
    result = (numbers[0] / lastNum)
    
default:
    result = numbers[0]
    
}

print("Result: \(result)")

