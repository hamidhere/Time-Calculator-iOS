//
//  ClockView.swift
//  Time Calculator
//
//  Created by H A M I . on 07/07/2025.
//

import UIKit

class ClockView: UIView {
    private var circleLayer = CAShapeLayer()
    private var handLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clockCircle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        clockCircle()
//        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
            super.layoutSubviews()
            
            
        clockCircle()
        }
    
    func clockCircle()  {
        let centerPoint = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = min(bounds.width, bounds.height) / 2.0
        let circlePath = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        circleLayer.fillColor = UIColor(named: "BlackTxtColor")?.cgColor
        circleLayer.strokeColor = UIColor(named: "RedTomatoColor")?.cgColor
        circleLayer.lineWidth = 18
        circleLayer.path = circlePath.cgPath
        layer.addSublayer(circleLayer)
        let handPath = UIBezierPath()
                handPath.move(to: centerPoint)
                handPath.addLine(to: CGPoint(x: centerPoint.x, y: centerPoint.y - radius + 10))
        
        handLayer.fillColor = UIColor(named: "YellowColor")?.cgColor
        handLayer.strokeColor = UIColor(named: "AmaranthBtnColor")?.cgColor
        handLayer.lineWidth = 12
        handLayer.path = handPath.cgPath
        layer.addSublayer(handLayer)
        
        
    }
    
}
