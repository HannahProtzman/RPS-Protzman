//
//  ThirdViewController.swift
//  RPS-Protzman
//
//  Created by Protzman,Hannah R on 2/19/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewDidAppear(_ animated: Bool) {
        let myModel1 = AppDelegate.myModel
        if myModel1!.player1Choice == .None
        {
            choice2LBL.text = "Make a choice"
        }
        else
        {
            choice2LBL.text = " "
        }
    }
    
    @IBAction func rock2(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer2(pick: .Rock)
        choice2LBL.text="You chose: \(myModel!.player2Choice)"
        
    }
    @IBAction func paper2(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer2(pick: .Paper)
        choice2LBL.text="You chose: \(myModel!.player2Choice)"
        
    }
    @IBAction func scissors(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer2(pick: .Scissors)
        choice2LBL.text="You chose: \(myModel!.player2Choice)"
    }
    
    @IBAction func spock2(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer2(pick: .Spock)
        choice2LBL.text="You chose: \(myModel!.player2Choice)"
    }
    
    @IBAction func lizard2(_ sender: Any) {
        let myModel = AppDelegate.myModel
        myModel?.choosePlayer2(pick: .Lizard)
        choice2LBL.text="You chose: \(myModel!.player2Choice)"
    }
    
    
    @IBOutlet weak var choice2LBL: UILabel!
    
}
