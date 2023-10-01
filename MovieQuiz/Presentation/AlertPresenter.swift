//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Kirill Kornakov on 17.09.2023.
//

import Foundation
import UIKit

class AlertPresenter: AlertPresenterProtocol {
    
    private weak var delegate: UIViewController?
    
    init(delegate: UIViewController) {
        self.delegate = delegate
    }
    
    func showQuizResult(for model: AlertModel) {
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: model.buttonText,
            style: .default) { _ in
                model.completition()
            }
        
        alert.addAction(action)
        
        delegate?.present(alert, animated: true, completion: nil)
        
    }
}
