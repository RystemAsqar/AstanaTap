//
//  DashboardPresenter.swift
//  Pods
//
//  Created by Rystem Asqar on 2/5/24.
//  
//

import Foundation

class DashboardPresenter: ViewToPresenterDashboardProtocol {

    // MARK: Properties
    var view: PresenterToViewDashboardProtocol?
    var interactor: PresenterToInteractorDashboardProtocol?
    var router: PresenterToRouterDashboardProtocol?
}

extension DashboardPresenter: InteractorToPresenterDashboardProtocol {
    
}
