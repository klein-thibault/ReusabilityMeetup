//
//  ProductsBuilder.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

protocol ProductsBuilder {

    var theme: Theme { get }

    func build() -> UIViewController

}
