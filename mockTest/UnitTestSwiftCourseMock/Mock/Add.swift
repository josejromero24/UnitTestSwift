//
//  Add.swift
//  UnitTestSwiftCourseMock
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation

class Add {
    
    var validNumber: ValidNumber
    var print: Print?
    
    init(validNumber: ValidNumber) {
        self.validNumber = validNumber
    }
    
    init(validNumber: ValidNumber, print: Print) {
        self.validNumber = validNumber
        self.print = print
    }
    
    func add(a: Int, b: Int) -> Int{
        if validNumber.check(number: a) && validNumber.check(number: b) {
            return a + b
        } else {
            return 0
        }
    }
    
    
    func addPrint(a: Int, b: Int){
        if validNumber.check(number: a) && validNumber.check(number: b) {
            print?.showMessage(number: a+b)
        } else {
            print?.showError()
        }
    }
    
    
    
    
}
