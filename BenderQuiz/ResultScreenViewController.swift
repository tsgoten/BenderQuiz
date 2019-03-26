//
//  ResultScreenViewController.swift
//  BenderQuiz
//
//  Created by Tarang Srivastava on 2/26/19.
//  Copyright © 2019 Tarang Srivastava. All rights reserved.
//

import UIKit

class ResultScreenViewController: UIViewController {
    lazy var responses: [BenderType:Int]! = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateDecision()
    }
    @IBOutlet weak var decisionLabel: UILabel!
    var decision: BenderType {
        get {
            var maxVal = 0
            var maxBenderType: BenderType? = nil
            for (bender, value) in responses {
                print("\(bender) value is \(value)")
                if(value >= maxVal){
                    maxVal = value
                    maxBenderType = bender
                }
            }
            return maxBenderType!
        }
    }
    private func calculateDecision(){
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
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
