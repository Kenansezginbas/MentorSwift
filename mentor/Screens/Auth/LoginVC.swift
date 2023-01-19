//
//  LoginVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//

import UIKit
import FirebaseAuth


class LoginVC: UIViewController {
    let auth = AuthService()
    
    let usernameTextField = GFEmailTextField()
    let passwordTextField = GFPasswordTextField()
    let signInButton      = GFButton()
    let goSignUpButton    = GFTextButton()
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        configureUI()
    }
    
    
    private func configureUI() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInButton)
        view.addSubview(goSignUpButton)
        
        
        //targets
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        goSignUpButton.addTarget(self, action: #selector(goSignUpPage), for: .touchUpInside)
        
   
        
        
        
        
        NSLayoutConstraint.activate([
            //usernameTextField
            usernameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            //passwordTextField
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            //signInButton
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            
            //goSignUpButton
            goSignUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20),
            goSignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goSignUpButton.heightAnchor.constraint(equalToConstant: 50),
            goSignUpButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    @objc private func signInButtonTapped() {
        if usernameTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
            self.present(CustomDialog().showAlert(title: "Hata", message: "Boş Alanları Doldurunuz"), animated: true)
        } else {
            auth.signIn(email: "email@example.com", password: "password") { result, errorMessage in
                switch result {
                case .success:
                    self.goSignUpPage()
                case .error:
                    if let errorMessage = errorMessage {
                        GFAlertController.showAlert(vc : self, title: "Hata", message: errorMessage)
                    }
                }

               
                
            }
        }
        
        
       
    }
  @objc func goSignUpPage() {
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .fullScreen
        self.present(signUpVC, animated: true)
    }
}
