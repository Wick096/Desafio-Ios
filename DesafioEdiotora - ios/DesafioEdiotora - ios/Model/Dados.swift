//
//  Dados.swift
//  DesafioEdiotora - ios
//
//  Created by Bruno de Oliveira on 13/06/22.
//

import Foundation

import SwiftUI

struct Dados: Decodable {
    let conteudos: [Artigo]
}

struct Artigo: Decodable, Identifiable {
    let autores : [String]?
    let tipo, url, urlOriginal, subTitulo, texto, atualizadoEm, publicadoEm, titulo: String?
    let id: Int?
    let secao: Secao?
    let imagens: [Imagem]?
}

struct Secao: Decodable {
    let nome, url: String?
}

struct Imagem: Decodable {
    let autor, fonte, legenda, url: String
}

