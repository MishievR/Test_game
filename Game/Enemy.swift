//
//  Enemy.swift
//  Game
//
//  Created by Roman Mishiev on 15.01.16.
//  Copyright © 2016 Roman Mishiev. All rights reserved.
//

import Foundation


                    //Создаем врага
class Enemy: Charecter {
                    //Мы сделали !!!Inheritance!!! Enemy и Character
    
    
                    //loot - добыча. Создаем мечь и щит соответственно ВАЖНО String заключен в [] так как мы сождаем ARRAY
    var loot: [String] {
        return ["Rusty dagger", "Cracked Bucker"]
    }
    
                    //Создаем персонажа
    var type: String {
        return "Grunt"
    }
    
                    //Создаем функцию потери оружия,
    func dropLoot() -> String? {
        
                    //Проверяем если не жив, то выбираем случайное оружие далее:
        
        if !isAlive {
            
                    //Мы хотим выбрать рандомно один их LOOT ARRAY, для этого конвертируем loot в Int32 и выбираем случайное значение. В нашем случае 0 или 1.
            
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot [rand]
        }
        
        return nil
    }
}