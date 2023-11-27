//
//  StringManagerTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by José Javier Romero on 27/11/23.
//

import Foundation

import XCTest


@testable import UnitTestSwiftCourse


final class StringManagerTest: XCTestCase {
 
    
    var sut: StringManager?
    
    override func setUp() {
        sut = StringManager()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    
    
    
    func testToUpperCased(){
        let message: String = "HOLA, MUNDO"
        let messageUpper = sut?.toUpperCased(message: message)
        XCTAssertEqual(message, messageUpper)
        
    }
    
    
    func testToLowerCased(){
        let message: String = "hola, mundo"
        let messageUpper = sut?.toLowerCased(message: message)
        XCTAssertEqual(message, messageUpper)
        
    }
}
