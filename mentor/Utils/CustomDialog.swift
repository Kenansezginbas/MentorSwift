//
//  CustomDialogs.swift
//  mentor
//
//  Created by Kenan Sezginbas on 8.01.2023.
//

import UIKit

class CustomDialog {
    
    func showAlert(title: String, message: String) -> UIAlertController {
        let alert           = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButtonAction  = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButtonAction)
        return alert
    }
}

