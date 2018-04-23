//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by Kyl Chiang on 2018/4/23.
//  Copyright © 2018年 KaiYun Chiang. All rights reserved.
//

import UIKit

protocol Storyboarded {
    // Give that protocol one method, instantiate(), which returns an instance of whatever you call it on.
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // loaded our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested.
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
        
        
    }
}
