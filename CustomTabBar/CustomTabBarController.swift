//
//  CustomTabBarController.swift
//  CustomTabBar
//
//  Created by Eugene on 05.04.2022.
//

import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.delegate = self
        self.selectedIndex = 1
        setupMiddleButton()
        
    }
    
    func setupMiddleButton() {
        let middleButton = UIButton(frame: CGRect(x: self.view.bounds.width / 2 - 30, y: -20, width: 60, height: 60))
        middleButton.setBackgroundImage(UIImage(named: "youtube"), for: .normal)
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.1
        middleButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        middleButton.addTarget(self, action: #selector(menuButtonAction), for: .touchUpInside)
        
        self.tabBar.addSubview(middleButton)
        self.view.layoutIfNeeded()
    }
    
    @objc func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 1
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
