//
//  GFButton2.swift
//  mentor
//
//  Created by Kenan Sezginbas on 11.01.2023.
//

import UIKit

class GFSaveButton: UIButton {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setTitle("Kaydet", for: .normal)
        backgroundColor                              = .blue
        titleLabel?.textColor                        = .white
        layer.cornerRadius                           = 12
        translatesAutoresizingMaskIntoConstraints    = false
    }
}
