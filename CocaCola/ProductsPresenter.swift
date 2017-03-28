//
//  ProductsPresenter.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

protocol ProductsPresenter: class {

    var view: ProductsView? { get }
    var interactor: ProductsInteractor { get }
    var router: ProductsRouter { get }

    func getProducts()
    func productFetched(products: [Product])

}

extension ProductsPresenter {

    func getProducts() {
        interactor.fetchProducts()
    }

}
