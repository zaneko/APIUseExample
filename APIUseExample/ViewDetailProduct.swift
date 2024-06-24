//
//  ViewDetailProduct.swift
//  APIUseExample
//
//  Created by Miguel Zane on 05/06/24.
//

import SwiftUI

struct ViewDetailProduct: View {
    
    var producto: Producto
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: producto.urlImagenes[0])) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Rectangle().foregroundColor(.gray)
            }
            Text("\(producto.nombre)")
            Text("Categoria: \(producto.codigoCategoria)")
            HStack {
                Text("Precio Promocional: \n $\(String(format: "%.2f", producto.precioRegular))")
                Text("Precio Regular: \n $\(String(format: "%.2f", producto.precioFinal))")
            }.frame(maxWidth: .infinity)//.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text("Descripcion: \n NO DISPONIBLE")
            }
        }.scaledToFit()//.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        Spacer()
    }
}

/*#Preview {
    ViewDetailProduct()
}*/
