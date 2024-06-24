//
//  ProductViewModel.swift
//  APIUseExample
//
//  Created by Miguel Zane on 28/05/24.
//

import Foundation

@MainActor
final class ProductViewModel: ObservableObject {
    
    @Published var products: [Producto]?
    
    func getProducts() async {
        do {
            let products = try await WebService.getProductData()
            self.products = products.resultado.productos
            //print(products.resultado.productos)
        } catch (let error){
            print(error.localizedDescription)
        }
    }
}
