//
//  HomeInteractor.swift
//  TestVIPER
//
//  Created by Роман Лабунский on 21.11.2019.
//  Copyright © 2019 Роман Лабунский. All rights reserved.
//

import Foundation

protocol HomeUseCase {
    func getTittle() -> HomeModel
}


class HomeInteractor {
    
}

extension HomeInteractor: HomeUseCase {
    
    func getTittle() -> HomeModel {
        return HomeModel(title: "Home VIPER! :)")
    }
    
}
