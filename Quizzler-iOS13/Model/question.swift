//
//  question.swift
//  Quizzler-iOS13
//
//  Created by Maruf Khan on 20/9/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct MultipleQuestion {
    let text : String
    let options: [String]
    let correctAnswer:String
    
    init(q: String, a: [String],correctAnswer: String) {
        self.text = q
        self.options = a
        self.correctAnswer = correctAnswer
    }
    
    
    
}
