//
//  BackEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/15/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

class BackEaseInOut : EasingFunction{
    
    
    var s: Float = 1.70158;
    
    convenience init(back: Float){
        self.init();
        self.s = back;
        
    }
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        if Float(t/=d/2) < 1{
            return c/2*(t*t*(((Float(s*=(1.525)))+1)*t - s)) + b;
            
        }
        
        return c/2*((Float(t-=2))*t*(((Float(s*=(1.525)))+1)*t + s) + 2) + b;
    }
    
}