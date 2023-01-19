//
//  BaseAuth.swift
//  mentor
//
//  Created by Kenan Sezginbas on 19.01.2023.
//

protocol BaseAuth {
    func signIn(email: String, password: String, completion: @escaping (AuthResult, String?) -> Void)
    func signUp(email: String, password: String, completion: @escaping (AuthResult, String?) -> Void)
    
}
