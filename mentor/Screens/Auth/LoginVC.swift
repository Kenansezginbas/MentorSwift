//
//  LoginVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    let usernameTextField = GFTextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        configureTextField()
    }


    private func configureUI() {
        configureTextField()
    }
    
    func configureTextField() {
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
        
        ])
    }
}
