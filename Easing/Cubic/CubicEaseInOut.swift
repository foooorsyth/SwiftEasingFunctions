//
//  CubicEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class CubicEaseInOut : EasingFunction{
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        if (Float(t/=d/2) < 1){
            return c/2*t*t*t + b;
        }
        
        return c/2*(Float(t-=2)*t*t + 2) + b;
        
        
    }
    
}