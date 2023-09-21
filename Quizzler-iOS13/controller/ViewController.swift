//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()

    var userAnswer = ""
    
    var rightAnswer = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        if( quizBrain.checkAnswer(answer: sender.currentTitle!)){
            sender.backgroundColor = UIColor.green
            sender.layer.cornerRadius = 25
            sender.setBackgroundImage(UIImage(named: "Rectangle"), for: UIControl.State.selected)
        
        }
        else {
            sender.backgroundColor = UIColor.red
            sender.layer.cornerRadius = 25
            sender.setBackgroundImage(UIImage(named: "Rectangle"), for: UIControl.State.selected)
       
        }
    }

    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = quizBrain.getProgress()
        
    }


    
}

