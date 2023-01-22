//
//  HeroesListView.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 16/1/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let headerLabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailTextField = {
        let textField = UITextField()
        textField.placeholder = "Email address"
        textField.autocapitalizationType = UITextAutocapitalizationType.none
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    let loginButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.borderWidth = .init(3)
        button.layer.cornerRadius = 9
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let errorMessageView = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .white
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getLoginButtonView() -> UIButton{
            return loginButton
        }
      
    func getEmailView()-> UITextField{
        return emailTextField
    }
    
    func getPasswordView()-> UITextField{
        return passwordTextField
    }
    
    func getMessageView()-> UILabel{
        return errorMessageView
    }

    
    func setUpViews() {
        backgroundColor = .black
        
        addSubview(headerLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(errorMessageView)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerLabel.heightAnchor.constraint(equalToConstant: 40),
            
            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 290),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 80),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            loginButton.topAnchor.constraint(equalTo: topAnchor, constant: 450),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
            
            errorMessageView.widthAnchor.constraint(equalToConstant: 20),
            errorMessageView.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 80),
            errorMessageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            errorMessageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            errorMessageView.heightAnchor.constraint(equalToConstant: 180),
            errorMessageView.widthAnchor.constraint(equalToConstant: 20)

        ])
        
    }
}
