//
//  CocaColaProductsViewController.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import Foundation
import UIKit

class CocaColaViewController: UITableViewController {

    var presenter: ProductsPresenter?
    var theme: Theme!
    var products: [ProductDisplay] = []

    init(presenter: ProductsPresenter, theme: Theme) {
        self.presenter = presenter
        self.theme = theme
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

        getProducts()
    }

}

extension CocaColaViewController: ProductsView {

    func gotProducts(products: [ProductDisplay]) {
        self.products = products
        tableView.reloadData()
    }

}

extension CocaColaViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell")

        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "ProductCell")
        }

        let product = products[indexPath.row]
        let style = theme.style(row: .r1, column: .c1)
        cell?.textLabel?.attributedText = TextRendered.render(text: product.name, attributes: style)
        cell!.imageView?.image = product.image

        return cell!
    }

}
