//
//  QuintEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/24/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

class QuintEaseIn : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        return c*Float(t/=d)*t*t*t*t + b;
        
    }
    
    
}