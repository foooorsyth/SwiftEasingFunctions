//
//  ElasticEaseIn.swift
//  Easing
//
//  Created by Justin Forsyth on 10/16/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation
import UIKit

public class ElasticEaseIn : EasingFunction {
    
    override public func calculate(var t: Float, var b: Float, var c: Float, var d: Float)->Float{
        
        
        if (t==0){
            return b;
            
        }
        
        t = t / d;
        if (t==1){
            return b+c;
            
        }
        let p = d * 0.3;
        let a = c;
        let s = p / 4;
        let t0 = t - 1;
        
        return -(a*(pow(2,10*t0)) * (sin((t0*d-s)*Float(2*CGFloat(M_PI))/p ))) + b;
        
    }
    
}