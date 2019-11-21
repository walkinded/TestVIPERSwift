//
//  HomeViewController.swift
//  TestVIPER
//
//  Created by Роман Лабунский on 21.11.2019.
//  Copyright © 2019 Роман Лабунский. All rights reserved.
//

import UIKit

protocol HomeView {
    
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var presenter: HomePresentation!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter.viewDidLoad()
        
        //helloLabel.text = "Hello VIPER!"
        // Do any additional setup after loading the view.
    }
}

extension HomeViewController: HomeView{
    
}

