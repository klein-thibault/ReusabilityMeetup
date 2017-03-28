//
//  ProductsView.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

protocol ProductsView: class {

    var presenter: ProductsPresenter? { get }
    var theme: Theme! { get }

    func getProducts()
    func gotProducts(products: [ProductDisplay])

}

extension ProductsView {

    func getProducts() {
        presenter?.getProducts()
    }

}
