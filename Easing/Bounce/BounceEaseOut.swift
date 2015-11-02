//
//  BounceEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/15/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

public class BounceEaseOut: EasingFunction{
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        t = t / d;
        if (t < Float(1/2.75)) {
            return c*(7.5625*t*t) + b;
        } else if (t < (2/2.75)) {
            
            t = t - (1.5/2.75);
            
            return c*(Float(7.5625)*t*t + 0.75) + b;
        } else if (t < (2.5/2.75)) {
            t = t - (2.25/2.75);
            
            return c*(Float(7.5625)*t*t + 0.9375) + b;
        } else {
            
            t = t - (2.625/2.75);
            
            return c*(Float(7.5625)*t*t + 0.984375) + b;
        }
    }
    
}