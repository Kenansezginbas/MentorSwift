//
//  QuestionModel.swift
//  mentor
//
//  Created by Kenan Sezginbas on 11.01.2023.
//

struct QuestionModel {
    let question: String?
    let type: String?
    let answered: Bool?
    let answer: String
    
    init(question: String, type: String, answered: Bool, answer: String){
        self.question = question
        self.type     = type
        self.answered = answered
        self.answer   = answer
    }
}
