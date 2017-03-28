//
//  SpriteProductsBuilder.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

class SpriteProductsBuilder: ProductsBuilder {

    let theme: Theme

    init(theme: Theme) {
        self.theme = theme
    }

    func build() -> UIViewController {
        let interactor = SharedProductsInteractor(productsDataManager: SpriteProductsDataManager())
        let presenter = SharedProductsPresenter(interactor: interactor, router: SharedProductsRouter())

        let storyboard = UIStoryboard(name: "SpriteProducts", bundle: nil)
        let view = storyboard.instantiateInitialViewController() as! SpriteViewController

        interactor.presenter = presenter
        presenter.view = view
        view.presenter = presenter
        view.theme = theme

        return view
    }
    
}
