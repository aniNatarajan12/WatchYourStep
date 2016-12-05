//
//  Wall.swift
//  WatchYourStep
//
//  Created by Anirudh Natarajan on 8/24/16.
//  Copyright (c) 2016 Anirudh. All rights reserved.
//

import Foundation
import SpriteKit

class Wall: SKSpriteNode {
    
    let WALL_WIDTH: CGFloat = 30.0
    let WALL_HEIGHT: CGFloat = 50.0
    let WALL_COLOR = UIColor.blackColor()
    
    override init() {
        let size = CGSizeMake(WALL_WIDTH, WALL_HEIGHT)
        super.init(texture: nil, color: WALL_COLOR, size: size)
        
        loadPhysicsBodyWithSize(size)
        startMoving()
    }
    
    func loadPhysicsBodyWithSize(size: CGSize) {
        physicsBody = SKPhysicsBody(rectangleOfSize: size)
        physicsBody?.categoryBitMask = wallCategory
        physicsBody?.affectedByGravity = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startMoving() {
        let moveLeft = SKAction.moveByX(-kDefaultXToMovePerSecond, y: 0, duration: 1)
        runAction(SKAction.repeatActionForever(moveLeft))
    }
    
    func stopMoving() {
        removeAllActions()
        self.alpha = 1
    }
    
}