//
//  BaseEasingFunction.swift
//  Easing
//
//  Created by Justin Forsyth on 10/13/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

//Abstract base class
class EasingFunction{
    
    var duration: Float
    
    init(var duration: Float){
        
        self.duration = duration;
    }

    func calculate(var t: Float, var b: Float, var c: Float, var d: Float) throws ->Float{
        throw AbstractImplementationError.AbstractFunction
    }
}


enum AbstractImplementationError : ErrorType {
    
    case AbstractFunction
    
}