//
//  ProductsDataManager.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

protocol ProductsDataManager {

    func fetchProducts(completion: ([Product]) -> Void)

}
