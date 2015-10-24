//
//  QuadEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/23/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class QuadEaseInOut : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        if (Float(t/=d/2) < 1){
            return c/2*t*t + b;
            
        }
        
        
        return -c/2 * ((--t)*(t-2) - 1) + b;
        
    }
    
}