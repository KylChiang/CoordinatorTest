//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Kyl Chiang on 2018/4/23.
//  Copyright © 2018年 KaiYun Chiang. All rights reserved.
//

import UIKit // viewDidLoad() or viewWillAppear() that are called automatically by UIKit.

class MainCoordinator: Coordinator {
    // an empty childCoordinators array to satisfy the requirement in the Coordinator protocol
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
