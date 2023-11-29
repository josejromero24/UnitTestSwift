//
//  AddTest.swift
//  UnitTestSwiftCourseMockTests
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation
import XCTest
import Mockingbird


@testable import UnitTestSwiftCourseMock



class AddTest: XCTestCase {
    var sut: Add?
    let mockValidNumer: ValidNumberMock = mock(ValidNumber.self)
    let mockPrint: PrintMock = mock(Print.self)
    
    override func setUp() {
        sut = Add(validNumber: mockValidNumer, print: mockPrint)
    }
    override func tearDown() {
        sut = nil
    }
    
    
    
    func testAdd(){
        given(mockValidNumer.check(number: 3)) ~> true
        given(mockValidNumer.check(number: 4)) ~> true
        sut?.add(a: 3, b: 4)
        verify(mockValidNumer.check(number: 3)).wasCalled()
        verify(mockValidNumer.check(number: 4)).wasCalled()
    }
    
    
    
    func testAdd2(){
        given(mockValidNumer.check(number: any())) ~> true
        var checkNumberBool: Bool = mockValidNumer.check(number: 3)
        XCTAssertEqual(true, checkNumberBool)
        
        given(mockValidNumer.check(number: -3)) ~> false
        checkNumberBool = mockValidNumer.check(number: -3)
        XCTAssertEqual(false, checkNumberBool)
    }
    
    
    
    
    
    // MARK:    Patterns
    
    /*
     AAA
     Arrange
     Act
     Assert
     */
    
    func testAAAPattern(){
        // Arrange
        given(mockValidNumer.check(number: 3)) ~> true
        given(mockValidNumer.check(number: 4)) ~> true
        
        // Act
        let result = sut?.add(a: 3, b: 4)
        
        // Assert
        XCTAssertEqual(7, result)
    }
    
    
    
    
    /*
     GWT
     Given
     When
     Then
     */
    func testBDDPattern(){
        // Given
        given(mockValidNumer.check(number: 3)) ~> true
        given(mockValidNumer.check(number: 4)) ~> true
        
        // When
        let result = sut?.add(a: 3, b: 4)
        
        // Then
        XCTAssertEqual(7, result)
    }
    
    
    //    Patrones
    
    
    
    
    
    //  MARK:    Argument Matcher
    
    func testArgumentMatcher(){
        // Given
        given(mockValidNumer.check(number: any())) ~> true
        
        // When
        let result = sut?.add(a: 3, b: 4)
        
        // Then
        XCTAssertEqual(7, result)
    }
    
    
    //    Argument Matcher
    
    
    
    
    // MARK:  Verify
    
    func testAddPrint(){
        // Given
        given(mockValidNumer.check(number: any())) ~> true
        
        // When
        sut?.addPrint(a: 3, b: 4)
        
        // Then
        verify(mockValidNumer.check(number: 3)).wasCalled()
    }
    
    
    
    func testAddPrint2(){
        // Given
        given(mockValidNumer.check(number: any())) ~> true
        
        // When
        sut?.addPrint(a: 3, b: 3)
        
        // Then
        verify(mockValidNumer.check(number: 3)).wasCalled(exactly(2))
        verify(mockValidNumer.check(number: 9)).wasNeverCalled()
        verify(mockValidNumer.check(number: 3)).wasCalled(atLeast(1))
        verify(mockValidNumer.check(number: 1)).wasCalled(atMost(3))
        
        
        verify(mockPrint.showMessage(number: 6)).wasCalled()
        
    }
    
    
    func testAddPrintShowError(){
        // Given
        given(mockValidNumer.check(number: any())) ~> false
        
        // When
        sut?.addPrint(a: 3, b: 3)
        
        // Then
        verify(mockPrint.showError()).wasCalled()
        
    }
    
    // Verify
    
    
    
}
