//
//  ValidNumberTest.swift
//  UnitTestSwiftCourseMockTests
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation
import XCTest


@testable import UnitTestSwiftCourseMock

class ValidNumberTest: XCTestCase {
    var sut: ValidNumber?
    
    override func setUp() {
        sut = ValidNumber()
    }
    
    
    override func tearDown() {
        sut = nil
    }
    
    
    func testCheck(){
        XCTAssertEqual(true, sut?.check(number: 5))
    }
    
    
    
    func testCheckNegative(){
        XCTAssertEqual(false, sut?.check(number: -4))
    }
    
    
    func testCheckMoreThan10(){
        XCTAssertEqual(false, sut?.check(number: 10))
    }
    
    
    
}
