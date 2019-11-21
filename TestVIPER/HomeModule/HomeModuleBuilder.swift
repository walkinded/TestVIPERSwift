//
//  HomeModuleBuilder.swift
//  TestVIPER
//
//  Created by Роман Лабунский on 21.11.2019.
//  Copyright © 2019 Роман Лабунский. All rights reserved.
//

import UIKit

class HomeModuleBuilder {
    
    func build() -> UIViewController {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        
        let interactor = HomeInteractor()
        let router = HomeRouter()
        
        let presenter = HomePresenter(interactor: interactor, router: router)
        view.presenter = presenter
        
        return view
    }
}
