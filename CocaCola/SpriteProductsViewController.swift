//
//  SpriteProductsViewController.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/14/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

class SpriteViewController: UIViewController {

    var presenter: ProductsPresenter?
    var theme: Theme!
    var products: [ProductDisplay] = []

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.getProducts()
    }

}

extension SpriteViewController: ProductsView {

    func gotProducts(products: [ProductDisplay]) {
        self.products = products
        collectionView.reloadData()
    }

}

extension SpriteViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpriteProductsCollectionViewCell",
                                                      for: indexPath) as! SpriteProductsCollectionViewCell

        let product = products[indexPath.row]
        cell.setup(with: product.image, title: product.name, theme: theme)

        return cell
    }

}
