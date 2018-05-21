//
//  RealAppTests.swift
//  RealAppTests
//
//  Created by Ashley, Alex on 5/18/18.
//  Copyright © 2018 Ashley, Alex. All rights reserved.
//

import XCTest
@testable import RealApp

class RealAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        XCTAssertEqual(1, 1)
    }
    
    func testMaybeFail() {
        let shouldFail = NSString(string: ProcessInfo.processInfo.environment["FAIL_BUILD"] ?? "false").boolValue
        XCTAssertFalse(shouldFail)
    }
}
