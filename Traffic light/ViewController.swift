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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightSwitch.layer.cornerRadius = 10
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height / 2
        // скругление работает двумя способами .bounds и .frame
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }

    @IBAction func trafficLightSwitchDidTapped() {
    
        trafficLightSwitch.setTitle("Next", for: .normal)
        trafficLightSwitch.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
      
        if redLight.alpha < 1 && yellowLight.alpha < 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
        } else if yellowLight.alpha < 1 && redLight.alpha == 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else if greenLight.alpha < 1 && yellowLight.alpha == 1 {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
        }
        
        
    }
    
}

