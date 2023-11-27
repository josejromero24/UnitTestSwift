//
//  CalculatorTemp.swift
//  UnitTestSwiftCourse
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation

class CalculatorTemp {
    
    func toFahrenheit(degree: Double) -> Double {
        return degree * 9 / 5 + 32
    }
    
    func toDegrees(fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * 5 / 9
    }
}
