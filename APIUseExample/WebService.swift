//
//  NetworkManager.swift
//  APIUseExample
//
//  Created by Miguel Zane on 28/05/24.
//

import Foundation

final class WebService {
    static func getProductData() async throws -> ProductModel {
        let urlString = "http://alb-dev-ekt-875108740.us-east-1.elb.amazonaws.com/sapp/productos/plp/1/ad2fdd4bbaec4d15aa610a884f02c91a"
        guard let queryURL = URL(string: urlString) else {
            throw ErrorCases.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: queryURL)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ErrorCases.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(ProductModel.self, from: data)
        } catch {
            throw ErrorCases.invalidData
        }
    }
}


