//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


enum Transmission {
    case automatic, manual
}


class Vehicle {
    
    let name : String
    let weight : Double
    let maxSpeed : Double
    var speed : Double = 0.0
    var heading : Double = 0.0
    
    init(name: String, weight: Double, maxSpeed : Double) {
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
 
    }

    
    
    
    func goFast() {
        
        speed = maxSpeed
    }
    
    func halt() {
        
        speed = 0.0
    }
    
    func accelerate() {
        
        if speed < maxSpeed {
            
            speed += (maxSpeed * (1/10))
        }
    }
    
    
    func decelerate() {
        
        if speed > 0 {
            
            speed -= (maxSpeed * (1/10))
            
        }
    }
    
    func turnRight() {
        
        if speed > 0 {
            
            heading += 90
            fixAngle()
            speed -= (speed * (1/2))
            
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            
            heading -= 90
            fixAngle()
            speed -= (speed * (1/2))
            
        }
    }
    
    
    func fixAngle() {
        
        if heading > 360 {
            
            heading -= 360
            
        } else if heading < 0{
            
            heading += 360
            
        } else {
            
            heading += 0
        }
    }
    
    
}
