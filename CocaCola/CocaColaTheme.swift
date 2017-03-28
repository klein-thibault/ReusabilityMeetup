//
//  CocaColaTheme.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

struct CocaColaFontSize: FontSize {
    let XL: CGFloat = 18
}

struct CocaColaFontName: FontName {
    let medium: String = "Arial-BoldMT"
}

struct CocaColaFontTheme: FontTheme {
    let fontSize: FontSize = CocaColaFontSize()
    let fontName: FontName = CocaColaFontName()
}

struct CocaColaColorTheme: ColorTheme {
    var primaryColor: UIColor = UIColor.red
    var secondaryColor: UIColor = UIColor.white
}

struct CocaColaTheme: Theme {
    var fontTheme: FontTheme = CocaColaFontTheme()
    var colorTheme: ColorTheme = CocaColaColorTheme()
}
