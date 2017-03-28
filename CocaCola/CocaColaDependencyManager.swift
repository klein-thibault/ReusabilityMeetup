//
//  CocaColaDependencyManager.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

struct CocaColaDependencyManager: DependencyManager {

    var productsBuilder: ProductsBuilder {
        return CocaColaProductsBuilder(theme: self.theme)
    }

    var theme: Theme {
        return CocaColaTheme()
    }

}
