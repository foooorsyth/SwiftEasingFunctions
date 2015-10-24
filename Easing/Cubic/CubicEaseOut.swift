//
//  CubicEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class CubicEaseOut : EasingFunction{
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return c*(Float(t=t/d-1)*t*t + 1) + b;
        
    }
    
}