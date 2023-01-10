//
//  QuestionAnswerVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 9.01.2023.
//

import UIKit

class QuestionAnswerVC: UIViewController {
    
    let addButton = GFCircleButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    final func configureUI() {
        view.addSubview(addButton)
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            addButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            addButton.heightAnchor.constraint(equalToConstant: 50),
            addButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    @objc func addButtonTapped() {
        let createQuestion = CreateQuestionVC()
        createQuestion.modalPresentationStyle = .formSheet
        self.present(createQuestion, animated: true)
        
    }
 
}
