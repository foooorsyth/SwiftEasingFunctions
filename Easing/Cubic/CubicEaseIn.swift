//
//  CubicEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

public class CubicEaseIn : EasingFunction{
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        t = t / d;
        
        return c*t*t*t + b;
        
    }
    
}