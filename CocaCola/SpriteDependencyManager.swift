//
//  SpriteDependencyManager.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

struct SpriteDependencyManager: DependencyManager {

    var productsBuilder: ProductsBuilder {
        return SpriteProductsBuilder(theme: self.theme)
    }

    var theme: Theme {
        return SpriteTheme()
    }
    
}
