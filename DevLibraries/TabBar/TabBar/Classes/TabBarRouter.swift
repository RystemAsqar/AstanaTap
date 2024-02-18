//
//  TabBarRouter.swift
//  Pods
//
//  Created by Rystem Asqar on 2/5/24.
//  
//

import Foundation
import UIKit
import DashboardView

public protocol TabBarRouterProtocol {
    var viewController: UITabBarController? { get set }
    static func build() -> UIViewController
}

public class TabBarRouter: TabBarRouterProtocol {
    weak public var viewController: UITabBarController?
    
    public static func build() -> UIViewController {
        let view = TabBarController()
        
        let dashboardVC = DashboardRouter.createModule()
        let leadersVC = UIViewController()
        let messagesVC = UIViewController()
        let profileVC = UIViewController()
        
        dashboardVC.tabBarItem = UITabBarItem(
        title: "Main", 
        image: UIImage(named: "main"),
        tag: 0
        )
        leadersVC.tabBarItem = UITabBarItem(
        title: "Leaders",
        image: UIImage(named: "leaders"),
        tag: 1
        )
        messagesVC.tabBarItem = UITabBarItem(
        title: "Messages",
        image: UIImage(named: "message"),
        tag: 2
        )
        profileVC.tabBarItem = UITabBarItem(
        title: "Profile",
        image: UIImage(named: "profile"),
        tag: 3
        )
        
        let controllers = [dashboardVC,leadersVC,messagesVC,profileVC]
        
        view.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }
        let router = TabBarRouter()
        router.viewController = view
        
        return view
    }
}
