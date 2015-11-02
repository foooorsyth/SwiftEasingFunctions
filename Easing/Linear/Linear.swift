//
//  Linear.swift
//  Easing
//
//  Created by Justin Forsyth on 10/23/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation



public class Linear : EasingFunction {
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return c*t/d + b;
        
    }
    
}