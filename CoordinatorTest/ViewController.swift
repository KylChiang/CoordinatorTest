//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Kyl Chiang on 2018/4/22.
//  Copyright © 2018年 KaiYun Chiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.configNavigator()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }

    // MARK: UI appearance configure
    func configNavigator() {
        let nav = self.navigationController?.navigationBar

        nav?.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white,
            NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 17)
        ]
        
        nav?.isTranslucent = false
        nav?.barTintColor = UIColor.blue
        nav?.topItem?.title = "Coordinator Test"
    }
}

