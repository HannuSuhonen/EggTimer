//
//  ViewController.swift
//  EggTimer
//
//  Created by Hannu Suhonen on 31.1.2023.
//

import UIKit

var counter = 30
weak var gameTimer: Timer?

class ViewController: UIViewController {
    
    @IBOutlet weak var timeText: UILabel!
    
    @IBAction func eggButtonPress(_ sender: UIButton) {
        gameTimer?.invalidate()
        
        let title = sender.titleLabel?.text
        let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
        
        switch title {
        case "Soft":
            print("Timer set to 5 minutes!")
            counter = eggTimes["Soft"]!
        case "Medium":
            print("Timer set to 7 minutes")
            counter = eggTimes["Medium"]!
        case "Hard":
            print("Timer set to 12 minutes")
            counter = eggTimes["Hard"]!
        default:
            print("testing!")
        }
        
        gameTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            counter -= 1
            timeText.text = String(counter)
        }
        else if(counter == 0){
            timeText.text = "Timer ended."
        }
    }
}
