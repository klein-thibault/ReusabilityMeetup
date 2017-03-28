//
//  TextRenderer.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation

struct TextRendered {
    static func render(text: String, attributes: FontAttributes) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: attributes)
    }
}
