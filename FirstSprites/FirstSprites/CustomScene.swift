//
//  CustomScene.swift
//  FirstSprites
//
//  Created by Lisa Sampson on 11/5/18.
//  Copyright © 2018 Lisa M Sampson. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene {
    
    override func sceneDidLoad() {
       super.sceneDidLoad()
        
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve position
        let position = touch.location(in: self)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        // Run move action
        crab.run(moveAction)
    }
    
    // MARK: - Properties
    
    let crab = SKSpriteNode()
}

