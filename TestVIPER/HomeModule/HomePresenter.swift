//
//  HomePresenter.swift
//  TestVIPER
//
//  Created by Роман Лабунский on 21.11.2019.
//  Copyright © 2019 Роман Лабунский. All rights reserved.
//

import Foundation

protocol HomePresentation {
    func viewDidLoad() -> Void
}

class HomePresenter {
    
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(interactor: HomeUseCase, router: HomeRouting) {
        self.interactor = interactor
        self.router = router
    }
    
}


extension HomePresenter: HomePresentation {
    func viewDidLoad() {
        
    }
}
