//
//  CalculatorView.swift
//  StringCalculatorUIKit
//
//  Created by 현수빈 on 2023/08/09.
//

import UIKit


protocol CalculateViewDelegate {
    func didChangeTokenText(_ calculatorView: CalculatorView, token: String)
    
    func didChangeInputText(_ calculatorView: CalculatorView, input: String)
    
}
class CalculatorView: UIView {
    
    var delegate: CalculateViewDelegate?
    
    private var tokenTextField: UITextField = {
        let view = UITextField()
        view.addTarget(self, action: #selector(didChangeTokenText(self)), for: .editingChanged)
        return view
    }()
    private var inputTextField: UITextField = {
        let view = UITextField()
        view.addTarget(self, action: #selector(didChangeTokenText(self)), for: .editingChanged)
        return view
    }()
    private var resultLabel: UILabel = {
        let view = UILabel()
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
    }
    
    
    func setResultLabel(_ result: String) {
        resultLabel.text = result
    }
    
}
extension CalculatorView {
    @objc private func didChangeTokenText(_ field: UITextField) {
        delegate?.didChangeTokenText(self, token: field.text ?? "")
    }
    
    @objc private func didChangeInputText(_ field: UITextField) {
        delegate?.didChangeInputText(self, token: field.text ?? "")
    }
    
    
}
