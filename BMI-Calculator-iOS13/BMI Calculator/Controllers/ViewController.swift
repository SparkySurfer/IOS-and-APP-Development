//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format:"%.2f",sender.value))m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format:"%.0f",sender.value))m"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
       // print(heightSlider.value)
       // print(weightSlider.value)
        let value = calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        print(value)
    }
    
    func calculateBMI(weight: Float,height:Float) -> Float{
        let BMI = weight/(height*height)
        return BMI
    }
}

