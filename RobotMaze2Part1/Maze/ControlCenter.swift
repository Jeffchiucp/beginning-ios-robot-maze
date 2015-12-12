//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(robot: ComplexRobotObject) {
        
        // Step 1.1c
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        
        if robotIsBlocked {
            myRobot.rotateLeft()
        } else {
            myRobot.move()
        }
        // Step 1.1d
        // TODO: Test the isFacingWall() function. Be sure to comment out or delete your test code once you are finished testing!
    
        // Step 1.4
        // TODO: Write an if statement that enables the robot to choose how to move. Use the pseudocode below as a guide.
        
        if robotIsBlocked {
            myRobot.rotateRight()
        } else {
            myRobot.move()
        }
        
        // Pseudocode
//         if the robot is blocked {
//             then randomly rotate
//         } otherwise {
//             either continue straight or randomly rotate
//         }
    }
        
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}
