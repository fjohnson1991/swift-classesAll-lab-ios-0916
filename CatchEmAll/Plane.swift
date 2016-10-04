//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    
    let maxAltitude : Double
    var altitude : Double = 0.0
    var inFlight : Bool {
        
        if altitude > 0.0 && speed > 0.0 {
            
            return true
        }
        
        return false
    }
    
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        
        if inFlight == false {
            
            speed = (maxSpeed * (1/10))
            altitude = (maxAltitude * (1/10))
        }
    }
    
    func land() {
        
        if inFlight == true {
            
            speed = 0.0
            altitude = 0.0
        }
    }
    
    func climb() {
        
        if inFlight == true {
            
            if altitude < maxAltitude && speed > 0.0 {
                
                altitude += (maxAltitude / 10)
                self.decelerate()
            }
            
            if altitude > maxAltitude {
                
                altitude = maxAltitude
            }
            if speed < 0 {
                
                speed = 0
            }
        }
    }
    
    func dive() {
        
        if inFlight == true {
            
            if speed < maxSpeed && altitude > 0.0 {
                
                altitude -= (maxAltitude / 10)
                accelerate()
                
            }
            
            if altitude < 0 {
                
                altitude = 0
            }
        }
    }
    
    
    func bankRight() {
        
        if inFlight == true {
            
            heading += 45
            fixAngle()
            speed -= (speed * (1/10))
        }
    }
    
    func bankLeft() {
        
        if inFlight == true {
            
            heading -= 45
            fixAngle()
            speed -= (speed * (1/10))
        }
    }
    
}
