//
//  CalculatorTempTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation
import XCTest


@testable import UnitTestSwiftCourse


final class CalculatorTempTest: XCTestCase {
    var sut: CalculatorTemp?
    
    
    override func setUp(){
        sut = CalculatorTemp()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    
    
//    Ejercicio 2 Para probar el Accuracy
    
    func testToFahrenheit(){
        let expectedResult: Double = -9.4
        let result = sut?.toFahrenheit(degree: -23)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.01)
    }
    
    
    func testToDegrees(){
        let expectedResult: Double = 25.555
        let result = sut?.toDegrees(fahrenheit: 78)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.01)
    }
    
//    Ejercicio 2 Para probar el Accuracy
    
    
}
