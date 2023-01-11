//
//  DataService.swift
//  mentor
//
//  Created by Kenan Sezginbas on 11.01.2023.
//


import FirebaseFirestore

class DataService {
     
    let db = Firestore.firestore()
    let questionPath = "Questions"
    
    
    
    
    final func addQuestion(question: String, type: String, answered: Bool, answer: String ) {
        db.collection(questionPath).addDocument(data: [
            "Question": question,
            "Type" : type,
            "Answered" : answer,
            "Answer" : answer,
            
        ]){error in
            if error != nil {
                print(error!.localizedDescription)
            }
            
        }
    }
    
}
