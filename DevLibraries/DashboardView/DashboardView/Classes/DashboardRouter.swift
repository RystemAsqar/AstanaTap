//
//  DashboardRouter.swift
//  Pods
//
//  Created by Rystem Asqar on 2/5/24.
//  
//

import Foundation
import UIKit

public class DashboardRouter: PresenterToRouterDashboardProtocol {
    
    // MARK: Static methods
    public static func createModule() -> UIViewController {
        
        let viewController = DashboardViewController()
        
        let presenter: ViewToPresenterDashboardProtocol & InteractorToPresenterDashboardProtocol = DashboardPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = DashboardRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = DashboardInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
