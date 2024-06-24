//
//  ViewListProduct.swift
//  APIUseExample
//
//  Created by Miguel Zane on 28/05/24.
//

import SwiftUI

struct ViewListProduct: View {
    
    @ObservedObject var productViewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack {
            List(productViewModel.products ?? [], id: \.id) { product in
                NavigationLink( destination: ViewDetailProduct(producto: product)) {
                    VStack {
                        AsyncImage(url: URL(string: product.urlImagenes[0])) { image in image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            Rectangle().foregroundColor(.gray)
                        }.frame(width: 100, height: 100)
                        VStack {
                            Text(product.nombre)
                            HStack {
                                if product.descuento {
                                    Text("De: $\(String(format: "%.2f", product.precioRegular))")
                                        .strikethrough()
                                        .foregroundColor(.gray)
                                    Text("A: $\(String(format: "%.2f", product.precioFinal))")
                                        .foregroundColor(.red)
                                }
                                else {
                                    Text("Precio: $\(String(format: "%.2f", product.precioRegular))")
                                        .foregroundColor(.black)
                                }
                            }.frame(maxWidth: .infinity)//.border(Color.black)
                        }.frame(height: 70)//.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    }.scaledToFit()//.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                }
            }
            .navigationTitle("Productos")
            .task{
                print("Cargando datos del servicio...")
                await productViewModel.getProducts()
            }
        }
    }
}

#Preview {
    ViewListProduct()
}
