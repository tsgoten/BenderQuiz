//
//  ResultScreenViewController.swift
//  BenderQuiz
//
//  Created by Tarang Srivastava on 2/26/19.
//  Copyright © 2019 Tarang Srivastava. All rights reserved.
//

import UIKit

class ResultScreenViewController: UIViewController {
    var responses: [BenderType:Int]!
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateDecision()
    }
    private func calculateDecision(){
        var maxVal = 0
        var maxBenderType: BenderType = .fire
        for (bender, value) in responses {
            if(value >= maxVal){
                maxVal = value
                maxBenderType = bender
            }
        }
        var decision: BenderType
        decision = maxBenderType
        switch decision {
        case .fire:
            decisionLabel.text = "You are a Firebender"
        case .water:
            decisionLabel.text = "You are a Waterbender"
        case .earth:
            decisionLabel.text = "You are a Earthbender"
        case .air:
            decisionLabel.text = "You are a Airbender"
        }
    }

    @IBOutlet weak var decisionLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
