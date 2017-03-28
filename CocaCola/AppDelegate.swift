//
//  AppDelegate.swift
//  CocaCola
//
//  Created by Thibault Klein on 3/13/17.
//  Copyright © 2017 Thibault Klein. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let dependencyManager = makeDependencyManager(forBrand: Brand.current)

        if let navigationController = window?.rootViewController as? UINavigationController,
            let viewController = navigationController.viewControllers.first as? ViewController {
            viewController.dependencyManager = dependencyManager
        }

        return true
    }

    private func makeDependencyManager(forBrand brand: Brand) -> DependencyManager {
        return brand.dependencyManager()
    }

}
