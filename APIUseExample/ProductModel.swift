//
//  ProductModel.swift
//  APIUseExample
//
//  Created by Miguel Zane on 28/05/24.
//

import Foundation

// MARK: - Welcome
struct ProductModel: Codable {
    let resultado: Resultado
}

// MARK: - Resultado
struct Resultado: Codable {
    let paginacion: Paginacion
    let categoria: String?
    let productos: [Producto]
}

// MARK: - Paginacion
struct Paginacion: Codable {
    let pagina, totalPaginas, totalRegistros, totalRegistrosPorPagina: Int
}

// MARK: - Producto
struct Producto: Codable {
    let id: String
    let idLinea: Int
    let codigoCategoria: String
    let idModalidad, relevancia: Int
    let lineaCredito: String
    let pagoSemanalPrincipal, plazoPrincipal: Int
    let disponibleCredito: Bool
    //let abonosSemanales: [AbonosSemanale]
    let sku, nombre: String
    let urlImagenes: [String]
    let precioRegular, precioFinal: Double
    let porcentajeDescuento: Double
    let descuento: Bool
    let precioCredito, montoDescuento: Double
}

// MARK: - AbonosSemanale
struct AbonosSemanale: Codable {
    let plazo, montoAbono, montoDescuentoAbono, montoUltimoAbono: Int
    let montoFinalCredito, idPromocion, montoDescuentoElektra, montoDescuentoBanco: Int
    let precio, montoAbonoDigital: Int
}
