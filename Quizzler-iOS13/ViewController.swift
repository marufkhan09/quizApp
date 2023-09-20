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
    
    struct QandAnswers{
        
    }
    
    var multiplequestions = [
        MultipleQuestion(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
               MultipleQuestion(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
               MultipleQuestion(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
               MultipleQuestion(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
               MultipleQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
               MultipleQuestion(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
               MultipleQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
               MultipleQuestion(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
               MultipleQuestion(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
               MultipleQuestion(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var quiz = [  Question(q: "A slug's blood is green.", a: "True"),
                      Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                      Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                      Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                      Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                      Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                      Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                      Question(q: "Google was originally called 'Backrub'.", a: "True"),
                      Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                      Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                      Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                      Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    
    
    var questionNumber = 0
    var userAnswer = ""
    var rightAnswer = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[questionNumber].text
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        if(questionNumber < quiz.count){
            updateUI()
            answerChecker(answer: sender.currentTitle!,sender: sender)
            questionNumber += 1
        }
        else {
            questionNumber = 0
            
        }
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        
    }
    func answerChecker(answer: String,sender: UIButton){
        if(answer == quiz[questionNumber].answer){
            sender.backgroundColor = UIColor.green
            sender.layer.cornerRadius = 25
            sender.setBackgroundImage(UIImage(named: "Rectangle"), for: UIControl.State.selected)
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { Timer in
                sender.backgroundColor = .clear
            }
        }else {
            sender.backgroundColor = UIColor.red
            sender.layer.cornerRadius = 25
            sender.setBackgroundImage(UIImage(named: "Rectangle"), for: UIControl.State.selected)
            Timer.scheduledTimer(withTimeInterval: 0.5,
                                 repeats: false) { Timer in
                sender.backgroundColor = .clear
            }
        }
    }
    
}

