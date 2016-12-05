//
//  Constants.swift
//  WatchYourStep
//
//  Created by Anirudh Natarajan on 8/24/16.
//  Copyright (c) 2016 Anirudh. All rights reserved.
//

import Foundation
import UIKit

// Configuration
let kGroundHeight: CGFloat = 20.0

// Initial Variables
let kDefaultXToMovePerSecond: CGFloat = 320.0

// Collision Detection
let playerCategory: UInt32 = 0x1 << 0
let wallCategory: UInt32 = 0x1 << 1

// Game Variables
let kNumberofPointsPerLevel = 10
let kLevelGenerationTimes: [NSTimeInterval] = [1.0, 0.8, 0.65, 0.5, 0.4]