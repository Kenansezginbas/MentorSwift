//
//  SignInVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 7.01.2023.
//

import UIKit

class SignUpVC: UIViewController {
    
    let emailTextField         = GFEmailTextField()
    let passwordTextField      = GFPasswordTextField()
    let passwordTextFieldCheck = GFPasswordTextField()
    let signUpButton           = GFButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        configureUI()
    }
    
    
    
    final func configureUI() {
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordTextFieldCheck)
        view.addSubview(signUpButton)
        
        //targets
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            //emailTextField
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            //passwordTextField
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            
            //passwordTextFieldCheck
            
            passwordTextFieldCheck.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            passwordTextFieldCheck.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextFieldCheck.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextFieldCheck.heightAnchor.constraint(equalToConstant: 50),
            
            
            //signUpButton
            
            signUpButton.topAnchor.constraint(equalTo: passwordTextFieldCheck.bottomAnchor, constant: 30),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,  constant: -30),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        
    }
    
    @objc final func signUp() {
        let authService = AuthService()
        if emailTextField.text?.isEmpty == true ||  passwordTextField.text?.isEmpty == true {
            GFAlertController.showAlert(vc: self, title: "Hata", message: "Boş Alanları Doldurunuz")
        } else {
            authService.signUp(email: emailTextField.text!, password: passwordTextField.text!) { result, data in
                self.goMainPage()
            }
        }
    }
    
    @objc func goMainPage() {
        let mainPage = MainTabBarController()
        mainPage.modalPresentationStyle = .fullScreen
        self.present(mainPage, animated: true)
    }
    
    
}
