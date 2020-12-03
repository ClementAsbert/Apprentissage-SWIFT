//
//  ViewController.swift
//  Test
//
//  Created by Clément ASBERT on 09/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var seconde: Int = 0
    var milliseconds: Int = 0
    var minutes: Int = 0
    
    @IBOutlet weak var minutesLabel: UILabel!
    
    @IBOutlet weak var secondsLabel: UILabel!
    
    @IBOutlet weak var millisecondsLabel: UILabel!
    
    
    @IBOutlet weak var startStopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Création Timer
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }


    @IBAction func startStopButtonTapped(_ sender: UIButton) {
    }
    
    
    
    @objc func timerAction(){
        milliseconds += 10
        
        if (milliseconds == 1000){
            seconde += 1
            milliseconds = 0
        }
        
        if (seconde == 60){
            minutes += 1
            seconde = 0
        }
        
        millisecondsLabel.text = String(format: "%03d", milliseconds)
        secondsLabel.text = String(format: "%02d", seconde)
        minutesLabel.text = String(format: "%02d", minutes)
        
        
        }
}

