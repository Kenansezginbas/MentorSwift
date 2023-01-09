//
//  GFCircleButton.swift
//  mentor
//
//  Created by Kenan Sezginbas on 10.01.2023.
//

import UIKit

class GFCircleButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    final func configure() {
        layer.cornerRadius                          = 24
        backgroundColor                             = .orange
        translatesAutoresizingMaskIntoConstraints   = false
        setImage(UIImage(systemName: "plus"), for: .normal)
    }
    
}
