//
//  CircEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class CircEaseInOut : EasingFunction {
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        if (Float(t/=d/2) < 1){
            
            return -c/2 * ((sqrt(1 - t*t) as Float) - 1) + b;
            
        }
        
        return c/2 * ((sqrt(1 - Float(t-=2)*t) as Float) + 1) + b;
        
        
        
    }
    
    
}