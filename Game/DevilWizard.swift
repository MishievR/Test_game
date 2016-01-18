//
//  DevilWizard.swift
//  Game
//
//  Created by Roman Mishiev on 15.01.16.
//  Copyright © 2016 Roman Mishiev. All rights reserved.
//

import Foundation


class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    override var type: String {
        return "Devil wizard"
    }
}
