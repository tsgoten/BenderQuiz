//
//  QuestionData.swift
//  BenderQuiz
//
//  Created by Tarang Srivastava on 3/4/19.
//  Copyright © 2019 Tarang Srivastava. All rights reserved.
//
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}
struct Answer {
    var text: String
    var type: BenderType
}
enum BenderType: String {
    case fire = "Firebender", water = "Waterbender", earth = "Earthbender", air = "Airbender"
    
}
