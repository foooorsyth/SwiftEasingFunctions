//
//  QuintEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/24/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


public class QuintEaseInOut : EasingFunction {
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        let t0 = t / (d / 2);
        
        if (t0 < 1) {
            return c/2*t0*t0*t0*t0*t0 + b;
            
        }
        
        let t1 = t0 - 2;
        
        return c/2*(t1*t1*t1*t1*t1 + 2) + b;
        
    }
    
    
}