//
//  TabBarViewController.swift
//  Pods
//
//  Created by Rystem Asqar on 2/5/24.
//  
//

import UIKit


open class TabBarController: UITabBarController {
    public override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)

        // TODO: use common colors
        tabBar.tintColor = UIColor(red: 7 / 255, green: 176 / 255, blue: 250 / 255, alpha: 1)
        tabBar.backgroundColor = .systemBackground
    }
}
