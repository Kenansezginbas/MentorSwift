//
//  GFButton.swift
//  mentor
//
//  Created by Kenan Sezginbas on 7.01.2023.
//

import UIKit

class GFButton: UIButton {
    var title: String!
    var buttonColor: UIColor!
    
    init(title: String, buttonColor: UIColor) {
        self.title          = title
        self.buttonColor    = buttonColor
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setTitle(title, for: .normal)
        backgroundColor                              = buttonColor
        titleLabel?.textColor                        = .white
        layer.cornerRadius                           = 12
        translatesAutoresizingMaskIntoConstraints    = false
    }
}
