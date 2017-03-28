//
//  Grid.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

enum Row {
    case r1

    func font(theme: Theme) -> FontAttributes {
        switch self {
        case .r1: return theme.fontTheme.mediumXL()
        }
    }
}

enum Column {
    case c1

    func color(theme: Theme) -> UIColor {
        switch self {
        case .c1: return theme.colorTheme.primaryColor
        }
    }
}
