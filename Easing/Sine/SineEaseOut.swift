//
//  SineEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/24/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


public class SineEaseOut : EasingFunction {
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return c * Float(sin(t/d * Float(M_PI/2))) + b;
        
        
    }
    
    
}