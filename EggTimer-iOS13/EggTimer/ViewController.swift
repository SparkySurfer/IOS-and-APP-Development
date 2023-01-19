//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    

    
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    var secondsRemaining = 60
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    var player: AVAudioPlayer?

    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        //example functionality
        if secondsPassed <= totalTime {
            
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            progressBar.progress = Float(percentageProgress)
            print(percentageProgress)
            secondsPassed += 1
        } else {
            timer.invalidate()
            titleLabel.text = "DONE"
            playSound()
        }
    }
}
