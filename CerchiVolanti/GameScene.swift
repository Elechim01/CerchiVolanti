//
//  GameScene.swift
//  PalloniCadenti
//
//  Created by Michele Manniello on 24/02/21.
//

import SpriteKit
import SwiftUI

class GameScene: SKScene {
//  Color array
    let color : [UIColor] = [.red,.orange,.yellow,.green,.cyan,.magenta]
//   Relies on frame propriety when callen in spriteView
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first  else {
            return
        }
        let location = touch.location(in: self)
        let sphere = SKShapeNode(circleOfRadius: 25)
        let randomNumber = Int.random(in: 0...5)
//        generate circle with random color every touch
        sphere.fillColor = color[randomNumber]
        sphere.lineWidth = 2
        sphere.position = location
        sphere.physicsBody = SKPhysicsBody(circleOfRadius: 25)
        addChild(sphere)
        
    }
}
