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
    }
    
}

