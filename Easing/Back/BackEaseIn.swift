//
//  BackEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/13/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

public class BackEaseIn : EasingFunction{

    var s: Float = 1.70158;
    
    convenience init(back: Float){
        self.init();
        self.s = back;
        
    }
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        t = t / d;
        
        return c*t*t*((s+1)*t - s) + b;
    }
    
}