//
//  ClockView.swift
//  Time Calculator
//
//  Created by H A M I . on 07/07/2025.
//

import UIKit

class ClockView: UIView {
    private let circleLayer = CAShapeLayer()
    private let clockHandLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    // Initial setup for the layer
    private func setup() {
        // Configure the appearance of the circle layer
        circleLayer.lineWidth = 14.0
        circleLayer.strokeColor = UIColor(named: "AmaranthBtnColor")?.cgColor // The border color
        circleLayer.fillColor = UIColor(named: "LightBgColor")?.cgColor   // The inside color
        // Add it to the view's layer hierarchy
        layer.addSublayer(circleLayer)
        
        clockHandLayer.lineWidth = 8.0
        clockHandLayer.strokeColor = UIColor(named: "blackTextColor")?.cgColor
        clockHandLayer.fillColor = UIColor(named: "yellowColor")?.cgColor
        clockHandLayer.lineCap = .round
        layer.addSublayer(clockHandLayer)
    }
    
    // layoutSubviews is called when the view's size is finalized
    override func layoutSubviews() {
        super.layoutSubviews()
        
        pathForCloackFace()
        
        
        
        
    }
    
    func pathForCloackFace() {
        // Define the center and radius based on the view's final bounds
        let centerPoint = CGPoint(x: bounds.midX, y: bounds.midY)
        // Use the smaller dimension to ensure the circle fits
        let radius = min(bounds.width, bounds.height) / 2.0
        
        // Create the circular path
        let circularPath = UIBezierPath(
            arcCenter: centerPoint,
            radius: radius,
            startAngle: 0,                   // Start at the 3 o'clock position
            endAngle: CGFloat.pi * 2,        // End after a full 360-degree rotation
            clockwise: true
        )
        
        // Update the layer's path to be this circle
        circleLayer.path = circularPath.cgPath
        
        // Clock hand: draw a line from center to top of circle
                let handPath = UIBezierPath()
                handPath.move(to: centerPoint)
                handPath.addLine(to: CGPoint(x: centerPoint.x, y: centerPoint.y - radius + 10)) // 10px padding
                clockHandLayer.path = handPath.cgPath
    }
    
    
}
