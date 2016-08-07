//
//  ViewController.swift
//  Tapper-Extreme
//
//  Created by Parth Bhagwat on 8/5/16.
//  Copyright © 2016 Cool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //My outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsToWin: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onTargetTapped(sender: UIButton!){
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
        restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        
        if howManyTapsToWin.text != nil && howManyTapsToWin != "" {
        
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsToWin.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsToWin.text!)!
            currentTaps = 0
        
            updateTapsLbl()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsToWin.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsToWin.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }else {
            return false
        }
    }

    func updateTapsLbl() {
        
        tapsLbl.text = "\(currentTaps) Taps!"
    }
    
}

