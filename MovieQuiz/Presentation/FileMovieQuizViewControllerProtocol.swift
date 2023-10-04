//
//  FileMovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Kirill Kornakov on 04.10.2023.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    
    var alertPresenter: AlertPresenterProtocol? { get }
    
    func hideLoadingIndicator()
    func showLoadingIndicator()
    func show(quiz step: QuizStepViewModel)
    func showNetworkError(message: String)
    func enabledButtons(isEnabled: Bool)
    func highlightImageBorder(isCorrectAnswer: Bool)
}
