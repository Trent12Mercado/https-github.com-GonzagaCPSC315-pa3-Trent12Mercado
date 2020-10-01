//
//  DungeonCharacter.swift
//  Heroes vs. Monsters
//
//  Created by Mercado, Trenton Laurent on 9/30/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation

class DungeonCharacter {
    var name: String
    var hitPoints: Int
    var damageRange: [Int]
    var attackSpeed: Int
    var chance: Double
    
    init(name: String) {
        self.name = name
        hitPoints = 100
        damageRange = [10, 20]
        attackSpeed = 4
        chance = 0.9
    }
    
    func attack() -> Int {
        let checkHit = hit()
        if checkHit == true {
            print("attack has succeeded")
            let amount = Int.random(in: damageRange[0]...damageRange[1])
            print("hits for \(amount) hit points")
            return amount
        }
        else {
            print("attack misses!")
            return 0
        }
    }
    
    //test for hit or miss
    func hit() -> Bool {
        let check = Int(10*chance)
        let miss = Int.random(in: 1...10)
        if miss <= check {
            return false
        }
        else {
            return true
        }
    }
}
