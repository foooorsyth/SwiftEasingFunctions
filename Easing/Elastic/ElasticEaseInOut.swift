//
//  ElasticEaseInOut.swift
//  Easing
//
//  Created by Justin Forsyth on 10/21/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation


class ElasticEaseInOut : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        if (t==0){
         return b;
            
        }
        if (Float(t/=d/2)==2){
            
         return b+c;
        }
        var p = d * (0.3 * 1.5);
        var a = c;
        var s = p / 4;
        if (t < 1){
            return -0.5*(a*Float(pow(2,10*Float(t-=1))) * Float(sin( Float(t*d-s)*Float(2*CGFloat(M_PI))/p ))) + b;
            
        }
        
        return a*Float(pow(2,-10*Float(t-=1))) * Float(sin(Float(t*d-s)*Float(2*CGFloat(M_PI))/p )) * 0.5 + c + b;
        
        
        
    }
    
    
    
}