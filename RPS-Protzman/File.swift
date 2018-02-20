//
//  File.swift
//  RPS-Protzman
//
//  Created by Protzman,Hannah R on 2/19/18.
//  Copyright © 2018 Protzman,Hannah R. All rights reserved.
//

import Foundation

class RockPaperScissors{
    enum Choice { case None, Rock, Paper, Scissors, Spock, Lizard}
    
    var player1Choice:Choice = .None
    var player2Choice:Choice = .None
    
    var numPlayer1Wins = 0
    var numPlayer2Wins = 0
    
    
    func reset() {
        player1Choice = .None
        player2Choice = .None
    }
    
    func haveResult() -> Bool {
        if player1Choice != .None {
            if player2Choice != .None {
                return true
            }
        }
        return false
    }
    
    
    func choosePlayer1(pick: Choice)
    {
        player1Choice = pick
    }
    func choosePlayer2(pick: Choice)
    {
        player2Choice = pick
    }
    
    func winner() -> String {
        print("hannah")
        if player1Choice == .Rock {
            if player2Choice == .Rock {
                return "The winner is: Tie"
            }
            else if player2Choice == .Paper {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
            else if player2Choice == .Scissors {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Spock {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
            else if player2Choice == .Lizard {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
        }
        else if player1Choice == .Paper {
            if player2Choice == .Rock {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Paper {
                return "The winner is: Tie"
            }
            else if player2Choice == .Scissors {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
            else if player2Choice == .Spock {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Lizard {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
        }
        else if player1Choice == .Scissors {
            if player2Choice == .Rock {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
            else if player2Choice == .Paper {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Scissors {
                return "The winner is: Tie"
            }
            else if player2Choice == .Spock {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
            else if player2Choice == .Lizard {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
        }
        else if player1Choice == .Spock {
            if player2Choice == .Rock {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Paper {
                return "The winner is: Player 2"
            }
            else if player2Choice == .Scissors {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Spock {
                return "The winner is: Tie"
            }
            else if player2Choice == .Lizard {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
        }
        else if player1Choice == .Lizard {
            if player2Choice == .Rock {
                return "The winner is: Player 2"
            }
            else if player2Choice == .Paper {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Scissors {
                numPlayer2Wins+=1
                return "The winner is: Player 2"
            }
            else if player2Choice == .Spock {
                numPlayer1Wins+=1
                return "The winner is: Player 1"
            }
            else if player2Choice == .Lizard {
                return "The winner is: Tie"
            }
        }
        return "The winner is: "
    }
}
