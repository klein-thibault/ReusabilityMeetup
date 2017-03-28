//
//  ProductsInteractor.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

protocol ProductsInteractor {

    var presenter: ProductsPresenter? { get }
    var productsDataManager: ProductsDataManager { get }

    func fetchProducts()

}

extension ProductsInteractor {

    func fetchProducts() {
        productsDataManager.fetchProducts { (products) in
            self.presenter?.productFetched(products: products)
        }
    }

}
