//
//  GFTextButton.swift
//  mentor
//
//  Created by Kenan Sezginbas on 18.01.2023.
//

import UIKit

class GFTextButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setTitle("Kayıt Ol", for: .normal)
        backgroundColor                              = .clear
        titleLabel?.textColor                        = .white
        layer.cornerRadius                           = 12
        translatesAutoresizingMaskIntoConstraints    = false
    }
}
