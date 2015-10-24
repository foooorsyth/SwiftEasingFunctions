//
//  CircEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

class CircEaseIn : EasingFunction{
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return -c * ((sqrt(1 - Float(t/=d)*t) as Float) - 1) + b;
        
    }
    
}