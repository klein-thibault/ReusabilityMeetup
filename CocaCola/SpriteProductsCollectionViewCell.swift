//
//  SpriteProductsCollectionViewCell.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

class SpriteProductsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var productImageView: UIImageView!
    @IBOutlet private weak var productLabel: UILabel!

    func setup(with image: UIImage, title: String, theme: Theme) {
        productImageView.image = image
        let style = theme.style(row: .r1, column: .c1)
        productLabel.attributedText = TextRendered.render(text: title, attributes: style)
    }

}
