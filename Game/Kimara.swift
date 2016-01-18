//
//  Kimara.swift
//  Game
//
//  Created by Roman Mishiev on 15.01.16.
//  Copyright © 2016 Roman Mishiev. All rights reserved.
//

import Foundation



class Kimara: Enemy {
   
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            
            // attemptAttack - попытка атаки
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
}