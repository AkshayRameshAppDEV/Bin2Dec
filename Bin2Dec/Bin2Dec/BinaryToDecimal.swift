//
//  BinaryToDecimal.swift
//  Bin2Dec
//
//  Created by Akshay Ramesh on 6/28/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

import Foundation

struct BinaryToDecimal {
    
    func convertBinaryToDecimal(binaryNumber: String) -> String {
        var decimalResult = 0.0
        var count = 0
        var resultInDecimal = ""
        for digit in binaryNumber.reversed() {
            let digitInDouble = Double(digit.wholeNumberValue!)
            decimalResult += digitInDouble * pow(2, Double(count))
            count += 1
        }
        resultInDecimal = String(Int(decimalResult))
        return resultInDecimal
    }
}
