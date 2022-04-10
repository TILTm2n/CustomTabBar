//
//  ViewController.swift
//  CustomTabBar
//
//  Created by Eugene on 05.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        self.tabBarController?.tabBar.backgroundColor = .blue
        self.tabBarController?.selectedIndex = 2
    }
    
}

