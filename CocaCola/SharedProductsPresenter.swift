//
//  SharedProductsPresenter.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

class SharedProductsPresenter: ProductsPresenter {

    weak var view: ProductsView?
    var interactor: ProductsInteractor
    var router: ProductsRouter

    init(interactor: ProductsInteractor, router: ProductsRouter) {
        self.interactor = interactor
        self.router = router
    }

    func productFetched(products: [Product]) {
        let productsDisplay = products.map { SharedProductDisplay(name: $0.name,
                                                                  image: UIImage(named: $0.image)!) }
        view?.gotProducts(products: productsDisplay)
    }

}
