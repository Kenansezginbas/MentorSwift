//
//  GFEmailTextField.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//


import UIKit

class GFEmailTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius                        = 10
        layer.borderWidth                         = 2
        layer.borderColor                         = UIColor.systemGray4.cgColor    
        textColor                                 = .label
        tintColor                                 = .label
        textAlignment                             = .center
        font                                      = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth                 = true
        minimumFontSize                           = 10
        keyboardType                              = .emailAddress
        backgroundColor                           = .tertiarySystemBackground
        autocorrectionType                        = .no
        placeholder                               = "Email"
    
         
    }

}
