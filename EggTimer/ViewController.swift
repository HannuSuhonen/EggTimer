//
//  ViewController.swift
//  EggTimer
//
//  Created by Hannu Suhonen on 31.1.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func eggButtonPress(_ sender: UIButton) {
        
        if(sender.titleLabel?.text == "Soft"){
            print("Timer set to 2")
            TimerSet(seconds: 2)
        }
        else if(sender.titleLabel?.text == "Medium"){
            print("Timer set to 5")
            TimerSet(seconds: 5)
        }
        else{
            print("Timer set to 10")
            TimerSet(seconds: 10)
        }
    }
    
    func TimerSet(seconds: Double){
        Timer.scheduledTimer(timeInterval: seconds,target: self,selector: #selector(fireTimer),userInfo: nil,repeats: false)
    }
    @objc func fireTimer() {
        print("Timer fired!")
    }
}
