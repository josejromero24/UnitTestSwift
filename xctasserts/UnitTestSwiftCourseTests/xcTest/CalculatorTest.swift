//
//  CalculatorTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by José Javier Romero on 27/11/23.
//


/*
 ------------------------|---------------------------------------------|
 func sumar(             | Este método nos devuelve un int             |
 numero1: int,           |                                             |
 numero2: int            |                                             |
 ): Int                  | -> Devuelve un int con el resultado         |
 ------------------------|---------------------------------------------|
 ------------------------|---------------------------------------------|
 func restar(            | Este método nos devuelve un int             |
 numero1: int,           |                                             |
 numero2: int            |                                             |
 ): Int                  | -> Devuelve un int con el resultado         |
 ------------------------|---------------------------------------------|
 
 
 Métodos a probar:           |  Entrada:           |  Salida Esperada:
 |                     |
 sumar(a int, b int)         | a = 10, b = 20      |
 sumar(a int, b int)         | a = 7, b = 4        |
 restar(a int, b int)        | a = 7, b = 4        |
 restar(a int, b int)        | a = 19, b = 20      |
 
 */
import Foundation
import XCTest


@testable import UnitTestSwiftCourse


final class CalculatorTest: XCTestCase {
    
    var sut: Calculator!
    
    override func setUp() {
        print("XXXX --> setUp()")
        sut = Calculator()
    }
    
    override func tearDown() {
        print("XXXX --> tearDown()")
        sut = nil
    }
    
    func testCalculatorNotNil(){
        print("XXXX --> testCalculatorNotNil()")
        XCTAssertNotNil(sut, "Sut debería de ser not nil en este punto")
    }
    
    func testAddAsset(){
        print("XXXX --> testAddAsset()")
        // 1.- Arrange
        let result = 30
        let actualResult: Int
        // 2.- Act
        actualResult = sut.add(number1: 10, number2: 20)
        // 3.- Assert
        XCTAssertEqual(result, actualResult, "actualResult debería de ser 30")
    }
    
    
    func testAddBDD(){
        print("XXXX --> testAddBDD()")
        // 1.- Given
        let result = 30
        let actualResult: Int
        // 2.- When
        actualResult = sut.add(number1: 10, number2: 20)
        // 3.- Then
        XCTAssertEqual(result, actualResult, "actualResult debería de ser 30")
    }
    
    func testAdd(){
        print("XXXX --> testAdd()")
        XCTAssertEqual(30,sut.add(number1: 10, number2: 20), "El resultado debería de ser 30")
    }
    
    
    func testSubtrat(){
        print("XXXX --> testSubtrat()")
        XCTAssertEqual(4, sut.subtrackt(number1: 11, number2: 7), "El resultado debería ser 4")
    }
    
    func testDivide(){
        print("XXXX --> testDivide()")
        XCTAssertEqual(2, sut.divide(number1: 4, number2: 2), "El resultado debería ser 2")
    }
    
    func testDivideByZero(){
        print("XXXX --> testDivideByZero()")
        XCTAssertEqual(2, try sut.divideByZero(number1: 4, number2: 2), "El resultado debería ser 2")
        XCTAssertThrowsError(try sut.divideByZero(number1: 4, number2: 0))
    }
    
    
    func testDisable(){
        print("XXXX --> testDisable()")
        XCTAssertEqual(2, try sut.divideByZero(number1: 4, number2: 2), "El resultado debería ser 2")
    }
    
    
    func testPerformance(){
        self.measure{
            sut.divide(number1: 4, number2: 2)
        }
    }
    
    
    
    
    
//    Ejercicio 1 Para comprobar rendimiento
    func testArraySquared(){
//        Given
        var arrayNumbers = [Int]()
        for n in 1...4{
            arrayNumbers.append(n)
        }
//        When
        let numberSquared = sut.arraySquared(arrayInt: arrayNumbers)
//        Then
        var expectedResult = [Int]()
        expectedResult.append(1)
        expectedResult.append(4)
        expectedResult.append(9)
        expectedResult.append(16)
        
        XCTAssertEqual(expectedResult, numberSquared)
        
    }
    
    func testArraySquared2(){
//        Given
        var arrayNumbers = [Int]()
        for n in 1...4{
            arrayNumbers.append(n)
        }
//        When
        let numberSquared = sut.arraySquared2(arrayInt: arrayNumbers)
//        Then
        var expectedResult = [Int]()
        expectedResult.append(1)
        expectedResult.append(4)
        expectedResult.append(9)
        expectedResult.append(16)
        XCTAssertEqual(expectedResult, numberSquared)
        
    }
    
    
    
    func testArraySquareMeasure(){
        var numbers = [Int]()
        
        for n in 1...5000000{
            numbers.append(n)
        }
        self.measure {
            sut.arraySquared(arrayInt: numbers)
        }
    }
    
    
    func testArraySquareMeasure2(){
        var numbers = [Int]()
        
        for n in 1...5000000{
            numbers.append(n)
        }
        self.measure {
            sut.arraySquared2(arrayInt: numbers)
        }
    }
    //    Ejercicio 1 Para comprobar rendimiento
    
    
    
}
