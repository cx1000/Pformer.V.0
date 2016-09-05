//
//  GameScene.swift
//  PformerV0
//
//  Created by Admin on 9/4/16.
//  Copyright (c) 2016 CDRD. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var map : JSTileMap!
    var player : Player!
    
    var previousUpdateTime = NSTimeInterval()
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = SKColor(red: 0.4, green: 0.4, blue: 0.95, alpha: 1.0)
        
        self.map = JSTileMap(named: "level1.tmx")
        self.map.position = CGPointZero //CGPointMake(self.frame.size.width / 2 , self.frame.size.height / 2)
        map.setScale(3.0)
        
        self.addChild(self.map)
        
        player  = Player(imageNamed: "koalio_stand")
        player.position = CGPointMake(100, 50)
        player.zPosition = 15
        
        self.map.addChild(player)
        
        }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        
        
        }
   
    override func update(currentTime: CFTimeInterval) {
        
        var delta = currentTime - previousUpdateTime
        
        if delta > 0.02 {
            delta = 0.02
        }
        
        self.previousUpdateTime = currentTime
        
        player.update(delta)
    }
}
