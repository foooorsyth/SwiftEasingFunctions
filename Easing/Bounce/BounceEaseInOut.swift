//
//  BounceEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

class BounceEaseInOut : EasingFunction{
    
    var bounceEaseOut: BounceEaseOut;
    var bounceEaseIn: BounceEaseIn;
    
    override init(duration: Float) {
        self.bounceEaseOut = BounceEaseOut(duration: duration);
        self.bounceEaseIn = BounceEaseIn(duration: duration);
        super.init(duration: duration);
    }
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        if (t < d/2){
            return bounceEaseIn.calculate(t*2, b: 0, c: c, d: d) * 0.5 + b;
        }
        else{
            return bounceEaseOut.calculate(t*2-d, b: 0, c: c, d: d) * 0.5 + c * 0.5 + b;
        }
        
    }
    
}