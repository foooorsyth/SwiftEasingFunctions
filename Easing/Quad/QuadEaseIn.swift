//
//  QuadEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/23/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


public class QuadEaseIn : EasingFunction {
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        t = t / d;
        
        return c*t*t + b;
        
        
    }
    
}