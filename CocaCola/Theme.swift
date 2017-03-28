//
//  Theme.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

typealias FontAttributes = [String: NSObject]

protocol Theme {
    var fontTheme: FontTheme { get }
    var colorTheme: ColorTheme { get }

    func style(row: Row, column: Column) -> FontAttributes
}

extension Theme {
    func style(row: Row, column: Column) -> FontAttributes {
        var font = row.font(theme: self)
        let color = column.color(theme: self)

        font[NSForegroundColorAttributeName] = color

        return font
    }
}

protocol FontSize {
    var XL: CGFloat { get }
}

protocol FontName {
    var medium: String { get }
}

protocol FontTheme {
    var fontSize: FontSize { get }
    var fontName: FontName { get }

    func mediumXL() -> FontAttributes
}

extension FontTheme {
    func mediumXL() -> FontAttributes {
        return [
            NSFontAttributeName: UIFont(name: fontName.medium, size: fontSize.XL)!,
            NSKernAttributeName: 0.0 as NSObject
        ]
    }
}

protocol ColorTheme {
    var primaryColor: UIColor { get }
    var secondaryColor: UIColor { get }
}
