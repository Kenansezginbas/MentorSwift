//
//  TabBarController.swift
//  mentor
//
//  Created by Kenan Sezginbas on 28.12.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    final func configureUI() {
        view.backgroundColor                = .systemBackground
        
        let home                            = HomeVC()
        home.tabBarItem.image               = UIImage(systemName: "house")
        
        let questionAnswer                  = QuestionAnswerVC()
        questionAnswer.tabBarItem.image     = UIImage(systemName: "questionmark.bubble")
        
        let menu                            = MenuVC()
        menu.tabBarItem.image               = UIImage(systemName: "menucard")
        
        viewControllers                     = [home, questionAnswer, menu]
    }

}
