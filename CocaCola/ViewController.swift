//
//  ViewController.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dependencyManager: DependencyManager?

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = dependencyManager?.theme.colorTheme.primaryColor
        navigationController?.navigationBar.tintColor = dependencyManager?.theme.colorTheme.secondaryColor
    }

    @IBAction func goToProductsTapped(_ sender: Any) {
        let builder = dependencyManager?.productsBuilder
        if let nextViewController = builder?.build() {
            navigationController?.pushViewController(nextViewController, animated: true)
        }
    }

}
