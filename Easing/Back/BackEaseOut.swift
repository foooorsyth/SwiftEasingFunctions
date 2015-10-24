//
//  BackEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/15/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

class BackEaseOut : EasingFunction{
    
    
    var s: Float = 1.70158;
    
    convenience init(duration: Float, back: Float){
        self.init(duration: duration);
        self.s = back;
        
    }
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return c*(Float(t=t/d-1)*t*((s+1)*t + s) + 1) + b;
    }
    
}