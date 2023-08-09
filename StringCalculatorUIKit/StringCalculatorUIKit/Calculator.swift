//
//  Calculator.swift
//  StringCalculatorUIKit
//
//  Created by 현수빈 on 2023/08/09.
//

import Foundation

class Calculator {
    var token = ""
    func calculate(with input: String) -> Int {
        input.components(separatedBy: CharacterSet(charactersIn: token))
                    .compactMap { Int($0) }
                    .reduce(0, +) 
    }
}
