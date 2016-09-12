//
//  PetYearCalculatorBrain.swift
//  PetYearCalculator
//
//  Created by Allison Hoffman on 9/12/16.
//  Copyright © 2016 Allison Hoffman. All rights reserved.
//

import Foundation

class PetYearCalculatorBrain {
    
    struct Dog {
        var dogAge: Double
        
        var personAgeEquivalent: Double {
            get {
                if dogAge <= 2 {
                    return dogAge * 10.5
                } else {
                    return ((dogAge-2)*4)+21
                }
            }
        }
    }
    
    struct Cat {
        var catAge: Double
        
        var personAgeEquivalent: Double {
            get {
                if catAge <= 1 {
                    return catAge * 15
                } else if catAge <= 2 {
                    return ((catAge-1)*10)+15
                } else {
                    return ((catAge-2)*4)+25
                }
            }
        }
    }
    
    func dogAgeCalculation(humanYears: Double) -> Double {
        let dogYears = Dog(dogAge: humanYears)
        return dogYears.personAgeEquivalent
    }
    
    func catAgeCalculation(humanYears: Double) -> Double {
        let catYears = Cat(catAge: humanYears)
        return catYears.personAgeEquivalent
    }
  
    
    
}