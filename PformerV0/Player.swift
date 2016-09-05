//
//  Player.swift
//  PformerV0
//
//  Created by Admin on 9/4/16.
//  Copyright © 2016 CDRD. All rights reserved.
//

import Foundation
import SpriteKit

class Player : SKSpriteNode {
    
    var velocity : CGPoint = CGPointZero
    
    func update(delta : NSTimeInterval) {
        
        let deltaFloat = CGFloat(delta)
        
        let gravity = CGPointMake(0.0, -450)
        
        let gravityStep = gravity * CGFloat(deltaFloat)
        
        velocity = velocity + gravityStep
        
        let velocityStep = velocity * deltaFloat
        
        self.position = position + velocityStep
        
    }
    
}