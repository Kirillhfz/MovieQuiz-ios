//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Kirill Kornakov on 17.09.2023.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    var completition: () -> ()?
}
