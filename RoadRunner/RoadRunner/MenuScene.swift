//
//  MenuScene.swift
//  RoadRunner
//
//  Created by Gerardo Mares on 3/10/17.
//  Copyright © 2017 Gerardo Mares. All rights reserved.
//

import UIKit
import SpriteKit

class MenuScene: SKScene {

    var newGameButtonNode:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
        newGameButtonNode = self.childNode(withName: "newGameButton") as! SKSpriteNode
        newGameButtonNode.texture = SKTexture(imageNamed: "newGameButton")
        
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        let touch = touches.first
        if let location = touch?.location(in: self) {
            let node = self.nodes(at: location)
            
            if node[0].name == "newGameButton" {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gameScene = GameScene(size: self.size)
                self.view!.presentScene(gameScene, transition: transition)
            } else {
                print("no")
            }

        }
        
    }
  
}
