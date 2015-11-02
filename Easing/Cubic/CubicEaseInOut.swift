//
//  CubicEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


public class CubicEaseInOut : EasingFunction{
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        t = t / (d / 2)
        
        if (t < 1){
            return c/2*t*t*t + b;
        }
        
        t = t - 2;
        
        return c/2*(t*t*t + 2) + b;
        
        
    }
    
}