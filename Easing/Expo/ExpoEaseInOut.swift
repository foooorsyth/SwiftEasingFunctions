//
//  ExpoEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/23/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class ExpoEaseInOut : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        if (t==0){
            return b;
        }
        
        
        if (t==d){
            return b+c;
        }
        
        
        if (Float(t/=d/2) < 1){
            return c/2 * Float(pow(2, 10 * (t - 1))) + b;
        }
        
        
        return c/2 * (-Float(pow(2, -10 * --t) + 2)) + b;
        
    }
    
    
}