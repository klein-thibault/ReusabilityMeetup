//
//  Brand.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

enum Brand {
    case cocaCola
    case sprite

    static var current: Brand {
        #if COCA_BRAND
            return .cocaCola
        #elseif SPRITE_BRAND
            return .sprite
        #endif
    }

    func dependencyManager() -> DependencyManager {
        #if COCA_BRAND
            return CocaColaDependencyManager()
        #elseif SPRITE_BRAND
            return SpriteDependencyManager()
        #endif
    }

}
