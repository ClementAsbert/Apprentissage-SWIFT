//
//  ViewController.swift
//  Chronometre
//
//  Created by Clément ASBERT on 09/11/2020.
//

import UIKit

class ViewController: UIViewController {

    var seconde: Int = 0
    var milliseconds: Int = 0
    var minutes: Int = 0
   
    
    //MARK: - Outlets
    
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var millisecondsLabel: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var lapsButton: UIButton!
    @IBOutlet weak var time1Label: UILabel!
    @IBOutlet weak var time2Label: UILabel!
    @IBOutlet weak var time3Label: UILabel!
    
    var timer: Timer? = nil
    
    //MARK: - View fonctions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetButton.layer.cornerRadius = 10
        startStopButton.layer.cornerRadius = 10
        lapsButton.layer.cornerRadius = 10
        startStopButton.setTitle("Start", for: .normal)
        
        time1Label.text = ""
        time2Label.text = ""
        time3Label.text = ""
        
    }
    
    //MARK: - Actions
    
    @IBAction func startStopButtonTapped(_ sender: UIButton) {
        startStopButton.setTitle("Pause", for: .normal)
        
        if let timer = timer {
            if timer.isValid {
                timer.invalidate()
                startStopButton.setTitle("Start", for: .normal)
                self.timer = nil
            }
        }else {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        minutes = 0
        seconde = 0
        milliseconds = 0
        
        if let timer = timer {
            timer.invalidate()
        }
        
        startStopButton.setTitle("Start", for: .normal)
        updateLabel()
    }
    
    @IBAction func lapsButtonTapped(_ sender: Any) {
        if (time1Label.text == ""){
            time1Label.text = String(format: "%02d : %02d : %03d", minutes, seconde, milliseconds)
        } else if (time2Label.text == ""){
            time2Label.text = String(format: "%02d : %02d : %03d", minutes, seconde, milliseconds)
        }else {
            time3Label.text = String(format: "%02d : %02d : %03d", minutes, seconde, milliseconds)
        }
        
        
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
        
        updateLabel()
        }
    
    
    func updateLabel(){
        millisecondsLabel.text = String(format: "%03d", milliseconds)
        secondsLabel.text = String(format: "%02d", seconde)
        minutesLabel.text = String(format: "%02d", minutes)
    }
}
