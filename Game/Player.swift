//
//  Player.swift
//  Game
//
//  Created by Roman Mishiev on 14.01.16.
//  Copyright © 2016 Roman Mishiev. All rights reserved.
//

import Foundation

                //Создаем подкласс Player в классе Charecter
class Player: Charecter {
                //Скрываем от изменений в Private
    private var _name = "Player"
    
                // Мы проверяем чтобы NAME был именно STRING
    var name: String {
        get {
            return _name
        }
    }
    
                //Создаем неизменяемый !список! ([String]() инвентаря игрока, которым он может атаковать
    private var _inventory = [String]()
    
                // Открываем и проверяем чтобы он содержал правильный тип - STRING
    var inventory: [String]{
        return _inventory
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
                //http://www.codingexplorer.com/designated-initializers-convenience-initializers-swift/ - ссылка
                //Мы сделали успощенный INIT с параметрами ДЛЯ PLAYER И ИСПОЛЬЗУЕМ В VIEWCONTROLLER Имя Нр и Сила атаки и соотнесли их с показателями персонажа и потом задали имя
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init (startingHp: hp, attackPwr: attackPwr)
        _name = name
    }
}