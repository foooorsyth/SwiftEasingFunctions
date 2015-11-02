//
//  File.swift
//  Easing
//
//  Created by Justin Forsyth on 10/23/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


public class ExpoEaseIn : EasingFunction {
    
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        return (t==0) ? b : c * Float(pow(2, 10 * (t/d - 1))) + b;
        
    }
    
    
    
}