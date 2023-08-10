//
//  Presenter.swift
//  StringCalculatorUIKit
//
//  Created by 현수빈 on 2023/08/09.
//

import Foundation
import UIKit

class Presenter {
    private let model = Calculator()
    let view: UIViewController?
    
    init(view: UIViewController?) {
        self.view = view
    }
}


extension Presenter: CalculateViewDelegate {
    func didChangeTokenText(_ calculatorView: CalculatorView, token: String) {
        model.token = token
    }
    
    func didChangeInputText(_ calculatorView: CalculatorView, input: String) {
        let sum = model.calculate(with: input)
        
    }
    
    
}
