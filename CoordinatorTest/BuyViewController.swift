//
//  BuyViewController.swift
//  CoordinatorTest
//
//  Created by Kyl Chiang on 2018/4/23.
//  Copyright © 2018年 KaiYun Chiang. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded  {

    weak var coordinator: MainCoordinator? // 大型專案的話，這裡會是protocol
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
