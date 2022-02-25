//
//  Tests.swift
//  PropertyWrapper
//
//  Created by Elizaveta Sidorenkova on 24.02.2022.
//

import XCTest
 
class PropertyWrappersTests: XCTestCase {
    func test_stringMustBeCamelStyle() {
        let string1 = "test camel case"
        let camelCase1 = CamelCasePropertyTest(string: string1)
        XCTAssertEqual(camelCase1.string, "testCamelCase")
        
        let string2 = "test camel case"
        let snakelCase1 = SnakeCasePropertyTest(string: string2)
        XCTAssertEqual(snakelCase1.string, "test-camel-case")

    }
    
}


extension PropertyWrappersTests {
    private struct CamelCasePropertyTest {
        @CamelCaseProperty var string: String
    }
    
    private struct SnakeCasePropertyTest {
        @SnakeCaseProperty var string: String
    }
}
