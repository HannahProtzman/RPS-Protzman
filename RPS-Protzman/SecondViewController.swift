//
//  SecondViewController.swift
//  RPS-Protzman
//
//  Created by Protzman,Hannah R on 2/19/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myModel1 = AppDelegate.myModel
        if myModel1!.player1Choice == .None
        {
            choice1LBL.text = "Make a choice"
        }
        else
        {
            choice1LBL.text = " "
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rock1(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer1(pick: .Rock)
        choice1LBL.text="You chose: \(myModel!.player1Choice)"
    }
    @IBAction func paper1(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer1(pick: .Paper)
        choice1LBL.text="You chose: \(myModel!.player1Choice)"
    }
    @IBAction func scissors1(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer1(pick: .Scissors)
        choice1LBL.text="You chose: \(myModel!.player1Choice)"
    }
    
    @IBAction func spock1(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer1(pick: .Spock)
        choice1LBL.text="You chose: \(myModel!.player1Choice)"
    }
    
    @IBAction func lizard1(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer1(pick: .Lizard)
        choice1LBL.text="You chose: \(myModel!.player1Choice)"
    }
    
    @IBOutlet weak var choice1LBL: UILabel!

}

