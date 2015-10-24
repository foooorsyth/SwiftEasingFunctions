//
//  QuintEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/24/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class QuintEaseOut : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        return c*(Float(t=t/d-1)*t*t*t*t + 1) + b;
        
    }
    
    
}