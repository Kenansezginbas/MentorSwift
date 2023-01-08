//
//  GFButton.swift
//  mentor
//
//  Created by Kenan Sezginbas on 7.01.2023.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setTitle("Giris Yap", for: .normal)
        backgroundColor                              = .blue
        titleLabel?.textColor                        = .white
        layer.cornerRadius                           = 12
        translatesAutoresizingMaskIntoConstraints    = false
    }
}
