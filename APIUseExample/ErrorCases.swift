//
//  ErrorCases.swift
//  APIUseExample
//
//  Created by Miguel Zane on 28/05/24.
//

import Foundation

enum ErrorCases: LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
    case decodingError
    
    var errorDescription: String? {
        switch self {
        case .invalidURL: return "Invalid URL Found."
        case .invalidResponse: return "Invalid Response Found."
        case .invalidData: return "Invalid Data Found."
        case .unableToComplete: return "Imposible completar operacion."
        case .decodingError: return "Error al decodificar datos."
        }
    }
}
