//
//  ImageHelper.swift
//  DesafioEdiotora - ios
//
//  Created by Bruno de Oliveira on 13/06/22.
//

import Foundation

import SwiftUI

extension Image {
    func data(url: URL) -> Self{
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}
