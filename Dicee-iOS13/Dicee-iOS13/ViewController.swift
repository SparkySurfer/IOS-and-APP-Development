//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//IB outlets let me reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceViews = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

        
        // WHO         WHAT    VALUE
 //   diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
 //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        // Do any additional setup after loading the view.


    @IBAction func rollButtonPressed(_ sender: UIButton)  {
        
        diceImageView1.image = diceViews[Int.random(in: 0...5)]
        diceImageView2.image = diceViews[Int.random(in: 0...5)]
        
       
        
    }
    
}

