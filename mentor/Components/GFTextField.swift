//
//  GFEmailTextField.swift
//  mentor
//
//  Created by Kenan Sezginbas on 26.12.2022.
//


import UIKit

class GFTextField: UITextField {

    var hintText: String!
    var isSecure: Bool!
    var kType: UIKeyboardType!
    
    init(hintText: String, isSecure: Bool, kType: UIKeyboardType) {
        self.hintText = hintText
        self.isSecure = isSecure
        self.kType    = kType
        super.init(frame: .zero)
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
        keyboardType                              = self.kType
        backgroundColor                           = .tertiarySystemBackground
        autocorrectionType                        = .no
        placeholder                               = self.hintText
        isSecureTextEntry                         = self.isSecure
        
    
         
    }

}
