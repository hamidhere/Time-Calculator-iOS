//
//  MainVC.swift
//  Time Calculator
//
//  Created by H A M I . on 27/06/2025.
//

import UIKit

class MainVC: UIViewController {
    
    //MARK: - OUTLETS -
    @IBOutlet weak var circleView: ClockView!
    @IBOutlet weak var clockHandView: UIView!
    
    //MARK: - PROPERTIES -

    
    //MARK: - LIFE CYCLES -
    override func viewDidLoad() {
        super.viewDidLoad()
//        setCircleView()
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
//        setClockHandView()
    }

}

extension MainVC {
    
    func setCircleView() {
        circleView.layer.masksToBounds = true
        circleView.layer.borderWidth = 6
        circleView.layer.borderColor = UIColor(named: "AmaranthBtnColor")?.cgColor
    }
    
    func setClockHandView() {
        let clockHandSize = CGSize(width: 4, height: 116)
        clockHandView.frame = CGRect(origin: .zero, size: clockHandSize)
        clockHandView.center = circleView.center
    }
    
}
