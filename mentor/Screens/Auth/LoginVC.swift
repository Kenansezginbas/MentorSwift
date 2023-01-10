//
//  LoginVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//

import UIKit
import FirebaseAuth


class LoginVC: UIViewController {
    let auth = Auth.auth()

    let usernameTextField = GFEmailTextField()
    let passwordTextField = GFPasswordTextField()
    let signInButton      = GFButton()
    let goSignUpTextView: UITextView = {
        let textView                                         = UITextView()
        textView.text                                        = "Kayıt Ol"
        textView.textColor                                   = .black
        textView.backgroundColor                             = .none
        textView.font                                        = UIFont.preferredFont(forTextStyle: .title1)
        textView.textAlignment                               = .center
        textView.translatesAutoresizingMaskIntoConstraints   = false
        textView.isUserInteractionEnabled                    = true
        return textView
    }()

   override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        configureUI()
    }
    
     
    private func configureUI() {
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInButton)
        view.addSubview(goSignUpTextView)
        
             
        //targets
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        
      
        
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

            //textView
            goSignUpTextView.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 20),
            goSignUpTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goSignUpTextView.heightAnchor.constraint(equalToConstant: 50),
            goSignUpTextView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
      
    @objc private func signInButtonTapped() {
        if usernameTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
            self.present(CustomDialog().showAlert(title: "Hata", message: "Boş Alanları Doldurunuz"), animated: true)
        } else {
            auth.signIn(withEmail: usernameTextField.text!, password: passwordTextField.text!) { result, error in
                if error != nil  {
                    self.present(CustomDialog().showAlert(title: "Hata", message: error!.localizedDescription), animated: true)
                } else {
                    self.goSignUpPage()
                }
             }
        }
    }
    
   
    @objc private func goSignUpPage() {
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .fullScreen
        self.present(signUpVC, animated: true)
    }
}
