//
//  Charecter.swift
//  Game
//
//  Created by Roman Mishiev on 14.01.16.
//  Copyright © 2016 Roman Mishiev. All rights reserved.
//
// Description: Создаем класс Charecter, делаем в нем 2 var с Type Int и = 10/100. Создаем вычисляемое свойство attackPwr Int с Геттером






import Foundation

// Description: Создаем класс Charecter, делаем в нем 2 var с Type Int и = 10/100.
class Charecter {
    
    //Создаем два Var и делаем их неизменяемыми "private"
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    //COMPUTED PROPERTY !!!!!!!!! создаем вычисляемое свойство attackPwr Int с Геттером

    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    //COMPUTED PROPERTY !!!!!!!!!
    
    var hp: Int {
        get {
            return _hp
            
        }
    }
    
    // Создаем переменную в виде COMPUTED PROPERTY isAlive и делаем из нее BOOL, то есть, либо персонаж жив, либо нет, нет, при условии что HP < или = 0. Если T
    
    var isAlive: Bool {
        
        
        //РАЗОБРАТЬ ЧТО ТАКОЕ GET В COMPUTED PROPERTIES!!!!!
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    //Initilizer methood
    
    // This Int can be changed
    
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    // Создаем функцию attemptAttack она включается, если пользователь успешно вызывает выполнение действия (в данном случае атаку) - она относится к BOOL либо вызвал действие, либо, FALSE, не вызвал.
    
    func attemptAttack(attackPwr: Int) -> Bool {
        
        // -= означает что HP либо отнимается либо не изменяется
        
        self._hp -= attackPwr
        
        // Если успешная атака, возвращаем значение TRUE для BOOL функции
        
        return true
        
    }
}






















