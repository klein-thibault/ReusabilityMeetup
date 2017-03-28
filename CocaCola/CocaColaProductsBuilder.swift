//
//  CocaColaProductsBuilder.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

class CocaColaProductsBuilder: ProductsBuilder {

    let theme: Theme

    init(theme: Theme) {
        self.theme = theme
    }

    func build() -> UIViewController {
        let interactor = SharedProductsInteractor(productsDataManager: CocaColaProductsDataManager())
        let presenter = SharedProductsPresenter(interactor: interactor, router: SharedProductsRouter())
        let view = CocaColaViewController(presenter: presenter, theme: theme)

        interactor.presenter = presenter
        presenter.view = view

        return view
    }

}
