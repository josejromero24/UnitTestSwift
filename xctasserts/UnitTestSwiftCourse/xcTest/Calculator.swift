//
//  Calculator.swift
//  UnitTestSwiftCourse
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation




/*
 ------------------------|---------------------------------------------|
 func sumar(             | Este método nos devuelve un int             |
    numero1: int,        |                                             |
    numero2: int         |                                             |
    ): Int               | -> Devuelve un int con el resultado         |
 ------------------------|---------------------------------------------|
 ------------------------|---------------------------------------------|
 func restar(            | Este método nos devuelve un int             |
    numero1: int,        |                                             |
    numero2: int         |                                             |
    ): Int               | -> Devuelve un int con el resultado         |
 ------------------------|---------------------------------------------|
 
 */
class Calculator{
    
    func add(number1: Int, number2: Int) -> Int{
        return number1 + number2
    }
    
    
    func subtrackt(number1: Int, number2: Int) -> Int{
        return number1 - number2
    }
    
    func divide(number1: Int, number2: Int) -> Int{
        return number1 / number2
    }
    
    
    func divideByZero(number1: Int, number2: Int) throws -> Int {
        if number2 == 0 {
            throw SomeError.zeroError
        }
        return number1 / number2
    }
    
    
    
//    Ejercicio 1 Para comprobar rendimiento
    
    func arraySquared(arrayInt: [Int]) -> [Int] {
        var result: [Int] = []
        for elemet in arrayInt {
            result.append(elemet * elemet)
        }
        return result
    }
    
    func arraySquared2(arrayInt: [Int]) -> [Int] {
        return arrayInt.map{arrayInt in arrayInt * arrayInt}
    }
    
    
//    Ejercicio 1 Para comprobar rendimiento
    
    
    
}


enum SomeError: Error{
    case zeroError
}
