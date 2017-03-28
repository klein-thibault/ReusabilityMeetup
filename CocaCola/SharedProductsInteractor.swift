//
//  SharedProductsInteractor.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

class SharedProductsInteractor: ProductsInteractor {

    weak var presenter: ProductsPresenter?
    var productsDataManager: ProductsDataManager

    init(productsDataManager: ProductsDataManager) {
        self.productsDataManager = productsDataManager
    }

}
