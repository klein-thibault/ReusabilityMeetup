//
//  SpriteProductsDataManager.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

class SpriteProductsDataManager: ProductsDataManager {

    func fetchProducts(completion: ([Product]) -> Void) {
        let products = [
            SharedProduct(name: "Sprite", image: "regular"),
            SharedProduct(name: "Sprite Light", image: "light")
        ]

        completion(products)
    }
    
}
