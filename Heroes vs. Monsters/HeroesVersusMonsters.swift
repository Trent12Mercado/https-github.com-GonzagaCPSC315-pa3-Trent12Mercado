//
//  HeroesVersusMonsters.swift
//  Heroes vs. Monsters
//
//  Created by Mercado, Trenton Laurent on 9/30/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation


class HeroesVersusMonsters {
    var p1 = DungeonCharacter(name: "Trent")
    var comp = DungeonCharacter(name: "Chris")
    func mainGame() {
        
        while(checkWin() == false) {
            print("player 1 press enter to attack")
            let _ = readLine()
            comp.hitPoints -= p1.attack()
            if checkWin() == true {
                break
            }
            print("press enter to end turn")
            let _ = readLine()
            print("it is now the computer's turn")
            p1.hitPoints -= comp.attack()
            print("computer's hit points: \(comp.hitPoints), player's hi points: \(p1.hitPoints)")
        }
    }
    
    //returns true if someone wins, false otherwise
    func checkWin() -> Bool {
        if p1.hitPoints <= 0 {
            print("the computer has won")
            return true
        }
        else if (comp.hitPoints <= 0) {
            print("congrats you have won")
            return true
        }
        return false
    }
    
    
}
