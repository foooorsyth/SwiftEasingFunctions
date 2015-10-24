//
//  ElasticEaseOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/17/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation



class ElasticEaseOut : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        if (t==0){
            return b;
            
        }
        if (Float(t/=d)==1){
            return b+c;
        }
        var p = d * 0.3;
        var a = c;
        var s = p/4;
        return (a*Float(pow(2,-10*t)) * Float(sin( (t*d-s)*(2*Float(M_PI))/p )) + c + b);
        
    }
    
}