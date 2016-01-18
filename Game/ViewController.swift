//
//  ViewController.swift
//  Game
//
//  Created by Roman Mishiev on 14.01.16.
//  Copyright © 2016 Roman Mishiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
                        //Соединяем UX с кодом
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLvl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
                        // Задаем 2 переменные. Восклицательный знак означает что они обязательно ждут String и выполняются
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                        // Player получает характеристики определение которых задано в Player.swift
        player = Player(name: "MishievR", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
                        //Пишем показатель HP пользователя, в данном случае он меняться не будет. playerHpLvl.text - означает что мы обратились к playerHpLvl сделали его текстом и он нам должен писать значение HP из player
        playerHpLvl.text = "\(player.hp) HP"
        
        
        
    }
                        // Генерируем случайного противника (картинку не меняем, меняем только оружие)
    func generateRandomEnemy() {
        
                        // говорим дать RAND'у класс Enemy из 0 или 1 (то есть 2!)
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
        }
        
        enemyImg.hidden = false
    }
                        // Все действия в viewDidLoad!
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
    }
   
    @IBAction func attackTapped(sender: AnyObject) {
        
        
                        // если enemy делает попытку атаковать
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
        }
                        // Получаем добычу от противника
        if let loot = enemy.dropLoot() {
                        // Добавляем полученное из сундука
            player.addItemToInventory(loot)
                        // Обращаемся к var chestMessage и пишем кто и что получил.
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    
    }
    

}

