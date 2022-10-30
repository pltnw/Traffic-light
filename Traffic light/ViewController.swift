//
//  ViewController.swift
//  Traffic light
//
//  Created by Екатерина Платонова on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLightSwitch: UIButton!
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightSwitch.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }
    
    @IBAction func trafficLightSwitchDidTapped() {
        
        if trafficLightSwitch.currentTitle == "Start" {
            trafficLightSwitch.setTitle("Next", for: .normal)
            trafficLightSwitch.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
        
        
//        if redLight.alpha < 1 && yellowLight.alpha < 1 {
//            redLight.alpha = 1
//            greenLight.alpha = 0.3
//        } else if yellowLight.alpha < 1 && redLight.alpha == 1 {
//            yellowLight.alpha = 1
//            redLight.alpha = 0.3
//        } else if greenLight.alpha < 1 && yellowLight.alpha == 1 {
//            greenLight.alpha = 1
//            yellowLight.alpha = 0.3
//        }
        
        
    }
    
}

extension ViewController {
   private enum CurrentLight {
        case red, yellow, green
    }
}
