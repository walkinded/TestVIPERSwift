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
    
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
}


extension HomePresenter: HomePresentation {
    func viewDidLoad() {
        let homeModel = self.interactor.getTittle()
        print("Home model value is \(homeModel)")
        
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            self.view?.updatetitle(title: homeModel.title)
            
        }
    }
}
