//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Kyl Chiang on 2018/4/22.
//  Copyright © 2018年 KaiYun Chiang. All rights reserved.
//

import UIKit

protocol Coordinator {
    // A property to store any child coordinators. We won’t need child coordinators here, but I’ll still add a property for them so you can expand this with your own code.
    var childCoordinators: [Coordinator] { get set }
    // A property to store the navigation controller that’s being used to present view controllers. Even if you don’t show the navigation bar at the top, using a navigation controller is the easiest way to present view controllers.
    var navigationController: UINavigationController { get set }
    
    // A start() method to make the coordinator take control. This allows us to create a coordinator fully and activate it only when we’re ready.
    func start()
}
