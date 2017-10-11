//
//  main.swift
//  Simple Calc
//
//  Created by Joycie Yu on 10/10/17.
//  Copyright © 2017 Joycie Yu. All rights reserved.
//

import Foundation


print("Enter an expression separated by returns:")
var result = 0.0
var firstRes = readLine(strippingNewline: true)!
let resArr = firstRes.split(separator:" ")
let length = resArr.count
switch length {
case 1 :
    let num1 = Double(firstRes)
    let operation: String = readLine(strippingNewline: true)!
    let secondRes = readLine(strippingNewline: true)!
    let num2 = Double(secondRes)

    switch operation {
    case "+" :
        result = num1! + num2!
    case "-" :
        result = num1! - num2!
    case "/" :
        result = num1! / num2!
    case "*" :
        result = num1! * num2!
    case "%" :
        result = num1!.truncatingRemainder(dividingBy: num2!)
    default:
        print ("Sorry, cannot compute")
    }
default:
    let operation = resArr.last!
    switch operation {
    case "count":
        result = Double(resArr.count - 1)
    
    case "avg":
        for index in 0...(resArr.count - 2){
            result += Double(resArr[index])!
        }
        result /= Double(resArr.count - 1)
    case "fact":
            var factSum = 1.0
        let stopVal : Int = Int(resArr[0])!
        if (stopVal > 0) {
            for index in 1...stopVal {
                factSum = factSum * Double(index)
            }
        } else {
            for index in stopVal...(-1) {
                factSum = factSum * Double(index)
            }
        }
        result = factSum;
        
    default :
        print ("Sorry, cannot compute")
    }
}
print("Result: \(result)")
