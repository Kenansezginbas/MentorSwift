//
//  AuthService.swift
//  mentor
//
//  Created by Kenan Sezginbas on 8.01.2023.
//

import FirebaseAuth

enum AuthResult {
case success
case error
}

class AuthService: BaseAuth {
   
    let auth = Auth.auth()

    func signIn(email: String, password: String, completion: @escaping (AuthResult, String?) -> Void) {
            auth.signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    completion(.error, error?.localizedDescription)
                } else {
                    completion(.success, nil)
                }
            }
        }
    
    final func signUp(email: String, password: String, completion: @escaping (AuthResult, String?) -> Void) {
            auth.createUser(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    completion(.error, error?.localizedDescription)
                } else {
                    completion(.success, nil)
                }
            }
        }
}
