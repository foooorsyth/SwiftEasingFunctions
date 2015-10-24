//
//  CircEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class CircEaseOut : EasingFunction{
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return c * (sqrt(1 - Float(t=t/d-1)*t) as Float) + b;
        
    }
    
}