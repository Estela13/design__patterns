//
//  ViewController.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 12/1/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    var mainView: LoginView { self.view as! LoginView }
    
    var viewModel: LoginViewModel?
    var loginButton: UIButton?
    var passwordTextField: UITextField?
    var emailTextField: UITextField?
    var errormessageView: UILabel?
    var login: String?
    
    
    override func loadView() {
        
        let loginView = LoginView()
        
        loginButton = loginView.getLoginButtonView()
        emailTextField = loginView.getEmailView()
        passwordTextField = loginView.getPasswordView()
        errormessageView = loginView.getMessageView()
        
        
        view = loginView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = LoginViewModel()
        
        loginButton?.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    func setUpUpdate(){
        viewModel = LoginViewModel()
        
    }
        
    func getLogin(email: String, password: String){

        viewModel?.login(email: email , password: password, completion: { response in
            DispatchQueue.main.async {
                self.errormessageView?.text = response
                self.setUpUpdate()
            }
            
        })
        
    }
            
    @objc func loginButtonTapped(sender: UIButton!) {
            
        guard let email = emailTextField?.text,
        !email.isEmpty else {
            print("Email is empty")
         return
         }
        guard let password = passwordTextField?.text, !password.isEmpty else {
         print("Password is empty")
         return
         }
        
        self.getLogin(email: email, password: password)
        setUpUpdate()
    }
    
}
