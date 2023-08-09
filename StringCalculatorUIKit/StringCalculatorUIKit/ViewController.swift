//
//  ViewController.swift
//  StringCalculatorUIKit
//
//  Created by 현수빈 on 2023/08/09.
//

import UIKit

class ViewController: UIViewController {
    
    private let calculatorView = CalculatorView(frame: .zero)
//    private var toke
    private var model: Calculator = Calculator()
    private let presenter = Presenter(self.view)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(calculatorView)
        
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate ([
            calculatorView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            calculatorView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            calculatorView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            calculatorView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            
        ])
        
        calculatorView.delegate = self
        
    }


}

extension ViewController: CalculateViewDelegate {
    func didChangeTokenText(_ calculatorView: CalculatorView, token: String) {
        model.token = token
    }
    
    func didChangeInputText(_ calculatorView: CalculatorView, input: String) {
//        let sum: Int = input.components(separatedBy: CharacterSet(charactersIn: token))
//            .compactMap { Int($0) }
//            .reduce(0, +) ??
        let sum = model.calculate(with: input)
        calculatorView.setResultLabel("\(sum)")
    }
    
   
}
