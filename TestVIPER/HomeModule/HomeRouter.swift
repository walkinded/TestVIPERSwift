//
//  HomeRouter.swift
//  TestVIPER
//
//  Created by Роман Лабунский on 21.11.2019.
//  Copyright © 2019 Роман Лабунский. All rights reserved.
//

import UIKit

protocol HomeRouting {

}

class HomeRouter {
    
    var viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
}

extension HomeRouter: HomeRouting {
    
}
