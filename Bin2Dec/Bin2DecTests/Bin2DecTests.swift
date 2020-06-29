//
//  Bin2DecTests.swift
//  Bin2DecTests
//
//  Created by Akshay Ramesh on 6/28/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

import XCTest
@testable import Bin2Dec

class Bin2DecTests: XCTestCase {
    
    func testBinaryToDecimalConversion(){
        let binaryToDecimal = BinaryToDecimal()
        let result = binaryToDecimal.convertBinaryToDecimal(binaryNumber: "1111")
        XCTAssertEqual(result, "15")
    }
}
