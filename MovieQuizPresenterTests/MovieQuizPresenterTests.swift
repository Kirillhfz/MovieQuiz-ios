//
//  MovieQuizPresenterTests.swift
//  MovieQuizPresenterTests
//
//  Created by Kirill Kornakov on 05.10.2023.
//

import Foundation
import XCTest
@testable import MovieQuiz

final class MovieQuizViewControllerMock: MovieQuizViewControllerProtocol {
    var alertPresenter: MovieQuiz.AlertPresenterProtocol?
    
    func show(quiz step: QuizStepViewModel) {
        
    }
    func hideLoadingIndicator() {
        
    }
    func showLoadingIndicator() {
        
    }
    func showNetworkError(message: String) {
        
    }
    func enabledButtons(isEnabled: Bool) {
        
    }
    func highlightImageBorder(isCorrectAnswer: Bool){
        
    }
    
}

final class MovieQuizPresenterTests: XCTestCase {
    func testPresenterConvertModel() throws {
        let viewControllerMock = MovieQuizViewControllerMock()
        let sut = MovieQuizPresenter(viewController: viewControllerMock)
        
        let emptyData = Data()
        let question = QuizQuestion(image: emptyData, text: "Question Text", correctAnswer: true)
        let viewModel = sut.convert(model: question)
        
        XCTAssertNotNil(viewModel.image)
        XCTAssertEqual(viewModel.question, "Question Text")
        XCTAssertEqual(viewModel.questionNumber, "1/10")
    }
}
