//
//  BackEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/15/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

public class BackEaseInOut : EasingFunction{
    
    var s: Float = 1.70158;
    
    convenience init(back: Float){
        self.init();
        self.s = back;
        
    }
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        let t0 = t / (d / 2);
        
        if t0 < 1{
            
            let s0 = s * 1.525;
            
            
            return c/2*(t0*t0*((s0+1)*t0 - s0)) + b;
            
        }
        
        let t1 = t0 - 2;
        let s0 = s * 1.525;
        
        print("bottom");
        
        
        return c/2*((t1)*t1*((s0+1)*t1 + s0) + 2) + b;
        
        
        
    }
    
}