//
//  BounceEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/15/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

public class BounceEaseIn : EasingFunction{
    

    var bounceEaseOut: BounceEaseOut;
    
    override public init() {
        self.bounceEaseOut = BounceEaseOut();
    }
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        return c - bounceEaseOut.calculate(d-t, b: 0, c: c, d: d) + b;
        
    }
    
}