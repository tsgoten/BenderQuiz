//
//  QuestionViewController.swift
//  BenderQuiz
//
//  Created by Tarang Srivastava on 2/26/19.
//  Copyright © 2019 Tarang Srivastava. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        questionLabel.numberOfLines = 2
        // Do any additional setup after loading the view.
    }
    
    var questionIndex = 0
    

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleAnswerStackView: UIStackView!
    @IBOutlet weak var singleAnswer1Button: UIButton!
    @IBOutlet weak var singleAnswer2Button: UIButton!
    @IBOutlet weak var singleAnswer3Button: UIButton!
    @IBOutlet weak var singleAnswer4Button: UIButton!
    
    @IBOutlet weak var multipleAnswerStackView: UIStackView!
    @IBOutlet weak var multipleAnswer1Switch: UISwitch!
    @IBOutlet weak var multipleAnswer2Switch: UISwitch!
    @IBOutlet weak var multipleAnswer3Switch: UISwitch!
    @IBOutlet weak var multipleAnswer4Switch: UISwitch!
    @IBOutlet weak var multipleAnswer1Label: UILabel!
    @IBOutlet weak var multipleAnswer2Label: UILabel!
    @IBOutlet weak var multipleAnswer3Label: UILabel!
    @IBOutlet weak var multipleAnswer4Label: UILabel!
    
    @IBOutlet weak var rangeAnswerStackView: UIStackView!
    @IBOutlet weak var rangeAnswer1Label: UILabel!
    @IBOutlet weak var rangeAnswer2Label: UILabel!
    @IBOutlet weak var rangeAnswerSlider: UISlider!
    
    @IBOutlet var progressView: UIView!
    
    func updateUI() {
        singleAnswerStackView.isHidden = true
        multipleAnswerStackView.isHidden = true
        rangeAnswerStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        navigationItem.title = "Question #\(questionIndex+1)"
        
        questionLabel.text = currentQuestion.text
        
        switch currentQuestion.type {
        case .single:
            updateSingleUI(question: currentQuestion)
        case .multiple:
            updateMultipleUI(question: currentQuestion)
        case .ranged:
            updateRangeUI(question: currentQuestion)
        }
    }
    func updateSingleUI(question: Question) {
        singleAnswerStackView.isHidden = false
        singleAnswer1Button.setTitle(question.answers[0].text, for: UIButton.State.normal)
        singleAnswer2Button.setTitle(question.answers[1].text, for: UIButton.State.normal)
        singleAnswer3Button.setTitle(question.answers[2].text, for: UIButton.State.normal)
        singleAnswer4Button.setTitle(question.answers[3].text, for: UIButton.State.normal)
    }
    func updateMultipleUI(question: Question) {
        multipleAnswerStackView.isHidden = false
        multipleAnswer1Label.text = question.answers[0].text
        multipleAnswer2Label.text = question.answers[1].text
        multipleAnswer3Label.text = question.answers[2].text
        multipleAnswer4Label.text = question.answers[3].text
    }
    func updateRangeUI(question: Question){
        rangeAnswerStackView.isHidden = false
        rangeAnswer1Label.text = question.answers[0].text
        rangeAnswer2Label.text = question.answers[1].text
    }
    
    var questions: [Question] = [
        Question(text: "Where would you like to go on vacation?", type: .single, answers: [
            Answer(text: "Niagara Falls", type: .water),
            Answer(text: "None, just meditate at home", type: .air),
            Answer(text: "Hawaii", type: .fire),
            Answer(text: "Grand Canyon", type: .earth)
            ]),
        Question(text: "How do you generally feel?", type: .multiple, answers: [
            Answer(text: "Angry", type: .fire),
            Answer(text: "Sad", type: .water),
            Answer(text: "Confident", type: .earth),
            Answer(text: "Peaceful", type: .air)
            ]),
        Question(text: "How much do you support Zutara?", type: .ranged, answers: [
            Answer(text: "Meant to be!", type: .fire ),
            Answer(text: "Never!", type: .air)
            ])
        
    ]
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        questionIndex+=1
        if(questionIndex<questions.count) {
            updateUI()
        }
        else {
            
        }
    }
    @IBAction func multipleAnswerSubmitAnswerButtonPressed(_ sender: UIButton) {
        questionIndex+=1
        if(questionIndex<questions.count) {
            updateUI()
        }
        else {
            
        }
        
    }
    @IBAction func rangeAnswerSubmitButtonPressed(_ sender: UIButton) {
        questionIndex+=1
        if(questionIndex<questions.count) {
            updateUI()
        }
        else {
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
