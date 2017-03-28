//
//  DependencyManager.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

protocol DependencyManager {

    var productsBuilder: ProductsBuilder { get }
    var theme: Theme { get }

}
