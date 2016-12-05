//
//  PointsLabel.swift
//  WatchYourStep
//
//  Created by Anirudh Natarajan on 8/24/16.
//  Copyright (c) 2016 Anirudh. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class PointsLabel: SKLabelNode {
    
    var number = 0
    
    init(num: Int) {
        super.init()
        
        fontColor = UIColor.blackColor()
        fontName = "Helvetica"
        fontSize = 24.0
        
        number = num
        text = "\(num)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func increment() {
        number++
        text = "\(number)"
    }
    
    func setTo(num: Int) {
        self.number = num
        text = "\(self.number)"
    }
    
}
