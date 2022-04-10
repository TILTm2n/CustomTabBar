//
//  SecondViewController.swift
//  CustomTabBar
//
//  Created by Eugene on 05.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        // Do any additional setup after loading the view.
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        self.tabBarController?.tabBar.backgroundColor = .orange
        self.tabBarController?.selectedIndex = 3
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
