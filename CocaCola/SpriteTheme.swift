//
//  SpriteTheme.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

struct SpriteFontSize: FontSize {
    let XL: CGFloat = 18
}

struct SpriteFontName: FontName {
    let medium: String = "Avenir-Book"
}

struct SpriteFontTheme: FontTheme {
    let fontSize: FontSize = SpriteFontSize()
    let fontName: FontName = SpriteFontName()

    func mediumXL() -> FontAttributes {
        return [
            NSFontAttributeName: UIFont(name: fontName.medium, size: fontSize.XL)!,
            NSKernAttributeName: 0.0 as NSObject
        ]
    }
}

struct SpriteColorTheme: ColorTheme {
    var primaryColor: UIColor = UIColor(red: 0/255, green: 162/255, blue: 41/255, alpha: 1)
    var secondaryColor: UIColor = UIColor.blue
}

struct SpriteTheme: Theme {
    var fontTheme: FontTheme = SpriteFontTheme()
    var colorTheme: ColorTheme = SpriteColorTheme()
}
