//
//  ViewController.swift
//  EggTimer
//
//  Created by Hannu Suhonen on 31.1.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func eggButtonPress(_ sender: UIButton) {
        
        let title = sender.titleLabel?.text
        let eggTimes = ["Soft": 5.0, "Medium": 10.0, "Hard": 15]
        
        switch title {
        case "Soft":
            print("Timer set to 5")
            TimerSet(seconds:eggTimes["Soft"]!)
        case "Medium":
            print("Timer set to 10")
            TimerSet(seconds: eggTimes["Medium"]!)
        case "Hard":
            print("Timer set to 15")
            TimerSet(seconds: eggTimes["Hard"]!)
        default:
            print("test!")
        }
    }
    
    func TimerSet(seconds: Double){
        Timer.scheduledTimer(timeInterval: seconds,target: self,selector: #selector(fireTimer),userInfo: nil,repeats: false)
    }
    @objc func fireTimer() {
        print("Timer fired!")
    }
}
