//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Kirill Kornakov on 17.09.2023.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer()
    func didFailToLoadData(with error: Error)
}
