//
//  ViewController.swift
//  BenderQuiz
//
//  Created by Tarang Srivastava on 2/22/19.
//  Copyright © 2019 Tarang Srivastava. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func beginQuestions(_ sender: UIButton) {
        performSegue(withIdentifier: "QuestionSegue", sender: nil)
    }
}

