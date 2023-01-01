//
//  GFPasswordTextField.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//


import UIKit

class GFPasswordTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius                        = 12
        layer.borderWidth                         = 2
        layer.borderColor                         = UIColor.systemGray4.cgColor
        textColor                                 = .label
        tintColor                                 = .label
        textAlignment                             = .center
        font                                      = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth                 = true
        minimumFontSize                           = 12
        isSecureTextEntry                         = true
        keyboardType                              = .default
        backgroundColor                           = .tertiarySystemBackground
        autocorrectionType                        = .no
        placeholder                               = "Enter a Password"
    
         
    }

}
