//
//  LoginVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    let usernameTextField = GFEmailTextField()
    let passwordTextField = GFPasswordTextField()
    let textView          = UITextView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }


    private func configureUI() {
        configureEmailTextField()
        configurePasswordTextField()
        configureText()
    }
    
    
    
    private func configureText() {
        textView.text       = "Mentor"
        textView.textColor  = .white
        textView.font       = UIFont.preferredFont(forTextStyle: .title1)
        
        view.addSubview(textView)
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    
    private func configureEmailTextField() {
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 50),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    private func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
}
