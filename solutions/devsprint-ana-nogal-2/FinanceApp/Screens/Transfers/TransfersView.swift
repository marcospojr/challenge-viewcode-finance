//
//  TransfersView.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import UIKit

class TransfersView: UIView {
    
    private lazy var transferAmountTextField: UITextField = {
        let textField = UITextField()
        textField.text = "$0"
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    private lazy var chooseContactButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    private lazy var transferButton: UIButton = {
        let button = UIButton()
        button.setTitle("Transfer", for: .normal)

        return button
    }()
    
    private lazy var verticalStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 4
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TransfersView {
    
    func setupViews() {
        addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(transferAmountTextField)
        verticalStackView.addArrangedSubview(transferButton)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            verticalStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -8),
            verticalStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            verticalStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}
