//
//  BounceEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/15/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

class BounceEaseIn : EasingFunction{

    var bounceEaseOut: BounceEaseOut;
    
    override init(duration: Float) {
        self.bounceEaseOut = BounceEaseOut(duration: duration);
        super.init(duration: duration);
    }
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        return c - bounceEaseOut.calculate(d-t, b: 0, c: c, d: d) + b;
        
    }
    
}