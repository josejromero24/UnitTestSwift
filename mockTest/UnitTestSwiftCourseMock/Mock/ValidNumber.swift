//
//  ValidNumber.swift
//  UnitTestSwiftCourseMock
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation


class ValidNumber{
    func check(number: Int) -> Bool {
        if (number>=0 && number<10) {
            return true
        } else {
            return false
        }
    }
}
