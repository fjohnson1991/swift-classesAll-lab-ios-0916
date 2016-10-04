//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    
    override func climb() {
        
        if inFlight == true {
            
            if altitude < maxAltitude && speed > 0.0 {
                
                altitude += (maxAltitude * (1/5))
                decelerate()
            }
            
            if speed > maxSpeed {
                
                speed = maxSpeed
            }
            
            if altitude > maxAltitude {
                
                altitude = maxAltitude
            }
        }
    }
    
    
    override func dive() {
        
        if inFlight == true {
            
            if speed < maxSpeed && altitude > 0.0 {
                
                altitude -= (maxAltitude / 5)
                accelerate()
                
            }
            
            if altitude < 0 {
                altitude = 0
            }
        }
    }
    
    func afterburner() {
        
        if speed == maxSpeed {
            
            speed = (maxSpeed * 2)
            
        }
        
    }
    
    
}
