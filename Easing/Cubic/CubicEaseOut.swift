//
//  CubicEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


public class CubicEaseOut : EasingFunction{
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        t = t / d - 1;
        
        return c*(t*t*t + 1) + b;
        
    }
    
}