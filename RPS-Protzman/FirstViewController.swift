//
//  FirstViewController.swift
//  RPS-Protzman
//
//  Created by Protzman,Hannah R on 2/19/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myModel = AppDelegate.myModel.winner()
        winnerLBL.text = "\(myModel)"
        let myModel1 = AppDelegate.myModel
        play1LBL.text = "Player 1: \(myModel1!.player1Choice)"
        play2LBL.text = "Player 2: \(myModel1!.player2Choice)"
        if !myModel1!.haveResult()
        {
            commandLBL.text = "Make your selections on other tabs"
        }
        else
        {
            commandLBL.text = " "
        }
        num1LBL.text="\(myModel1!.numPlayer1Wins)"
        num2LBL.text="\(myModel1!.numPlayer2Wins)"
    }
    
    @IBAction func reset(_ sender: Any) {
        let myModel = AppDelegate.myModel.reset()
        let myModel1 = AppDelegate.myModel
        play1LBL.text = "Player 1: \(myModel1!.player1Choice)"
        play2LBL.text = "Player 2: \(myModel1!.player2Choice)"
        winnerLBL.text = "The winner is: "
        commandLBL.text = "Make your selections on other tabs"
    }
    
    

    @IBOutlet weak var winnerLBL: UILabel!
    @IBOutlet weak var play1LBL: UILabel!
    @IBOutlet weak var play2LBL: UILabel!
    @IBOutlet weak var commandLBL: UILabel!
    @IBOutlet weak var num1LBL: UILabel!
    @IBOutlet weak var num2LBL: UILabel!
    
    
    
    
    
}

