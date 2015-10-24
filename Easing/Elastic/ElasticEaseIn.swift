//
//  ElasticEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation



class ElasticEaseIn : EasingFunction {
    
    
    override func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        if (t==0){
            return b;
            
        }
        if (Float(t/=d)==1){
            return b+c;
            
        }
        let p = d * 0.3;
        let a = c;
        let s = p / 4;
        return -(a*(pow(2,10*Float(t-=1)) as Float) * (sin((t*d-s)*Float(2*CGFloat(M_PI))/p )) as Float) + b;
        
    }
    
}