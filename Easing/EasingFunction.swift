//
//  BaseEasingFunction.swift
//  Easing
//
//  Created by Justin Forsyth on 10/13/15.
//  Copyright © 2015 jforce. All rights reserved.
//

import Foundation

//Abstract base class
public class EasingFunction {
    
    
    //Look up table for all functions
    //No analog for NSClassFromString in Swift :(
    public static let lut:[String: EasingFunction] = ["BackEaseIn": BackEaseIn(),
                                                    "BackEaseOut": BackEaseOut(),
                                                    "BackEaseInOut": BackEaseInOut(),
                                                    "BounceEaseIn": BounceEaseIn(),
                                                    "BounceEaseOut": BounceEaseOut(),
                                                    "BounceEaseInOut": BounceEaseInOut(),
                                                    "CircEaseIn": CircEaseIn(),
                                                    "CircEaseOut": CircEaseOut(),
                                                    "CircEaseInOut": CircEaseInOut(),
                                                    "CubicEaseIn": CubicEaseIn(),
                                                    "CubicEaseOut": CubicEaseOut(),
                                                    "CubicEaseInOut": CubicEaseInOut(),
                                                    "ElasticEaseIn": ElasticEaseIn(),
                                                    "ElasticEaseOut": ElasticEaseOut(),
                                                    "ElasticEaseInOut": ElasticEaseInOut(),
                                                    "Linear": Linear(),
                                                    "QuadEaseIn": QuadEaseIn(),
                                                    "QuadEaseOut": QuadEaseOut(),
                                                    "QuadEaseInOut": QuadEaseInOut(),
                                                    "QuintEaseIn": QuintEaseIn(),
                                                    "QuintEaseOut": QuintEaseOut(),
                                                    "QuintEaseInOut": QuintEaseInOut(),
                                                    "SineEaseIn": SineEaseIn(),
                                                    "SineEaseOut": SineEaseOut(),
                                                    "SineEaseInOut": SineEaseInOut()]
    
    
    
    public init(){

        
    }

    public func calculate(var t: Float, var b: Float, var c: Float, var d: Float) throws ->Float{
        throw AbstractImplementationError.AbstractFunction
    }
    
}

public enum AbstractImplementationError : ErrorType {
    
    case AbstractFunction
    
}
