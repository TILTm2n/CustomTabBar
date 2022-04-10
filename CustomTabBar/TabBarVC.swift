//
//  TabBarVC.swift
//  CustomTabBar
//
//  Created by Eugene on 10.04.2022.
//

import UIKit

class TabBarVC: UITabBar {

    private var shapeLayer: CALayer?
    
    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 1.0
        shapeLayer.shadowOffset = CGSize(width: 0, height: 0)
        shapeLayer.shadowRadius = 10
        shapeLayer.shadowColor = UIColor.gray.cgColor
        
        self.shapeLayer = shapeLayer
        
    }
    
    override func draw(_ rect: CGRect) {
        self.addShape()
        self.unselectedItemTintColor = .white
        self.tintColor = .cyan
    }

    func createPath() -> CGPath {
        let height: CGFloat = 15
        let path = UIBezierPath()
        let centerWidth = self.frame.width / 2
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: self.frame.width, y: 0), controlPoint: CGPoint(x: centerWidth, y: height))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.close()
        
        return path.cgPath
    }
}
