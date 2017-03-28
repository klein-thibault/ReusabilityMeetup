//
//  CocaColaProductsDataManager.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

class CocaColaProductsDataManager: ProductsDataManager {

    func fetchProducts(completion: ([Product]) -> Void) {
        let products = [
            SharedProduct(name: "Coca Cola", image: "regular"),
            SharedProduct(name: "Coca Cola Light", image: "light")
        ]

        completion(products)
    }

}
