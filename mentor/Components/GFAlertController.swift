//
//  GFAlertController.swift
//  mentor
//
//  Created by Kenan Sezginbas on 11.01.2023.
//

import UIKit

class GFAlertController {
    
     static func showAlert(vc: UIViewController ,title: String, message: String) -> UIAlertController {
        let alert       = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction    = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        vc.present(alert, animated: true)
        return alert
    }
}
