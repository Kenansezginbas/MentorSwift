//
//  CreateQuestionVC.swift
//  mentor
//
//  Created by Kenan Sezginbas on 10.01.2023.
//

import UIKit

class CreateQuestionVC: UIViewController {
    let dataService       = DataService()
    let questionTextField = GFQuestionTextField()
    let saveButton        = GFSaveButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        configureUI()
    }
  
    
    final func configureUI() {
        view.addSubview(questionTextField)
        view.addSubview(saveButton)
        
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            questionTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            questionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            questionTextField.heightAnchor.constraint(equalToConstant: 100),
            
            saveButton.topAnchor.constraint(equalTo: questionTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            saveButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    

    
    @objc final func saveButtonTapped() {
        dataService.addQuestion(question: "", type: "", answered: false, answer: "")
        saveQuestion()
    }
    
    final func saveQuestion() {
        let dataService = DataService()
        dataService.addQuestion(question: questionTextField.text!, type: "", answered: false, answer: "")
    }

}
