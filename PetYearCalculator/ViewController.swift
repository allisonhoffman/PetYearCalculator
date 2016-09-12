//
//  ViewController.swift
//  PetYearCalculator
//
//  Created by Allison Hoffman on 9/12/16.
//  Copyright © 2016 Allison Hoffman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var stepperValue: UILabel!
    
    @IBAction func stepperAction(sender: UIStepper) {
        let value = stepper.value
        stepperValue.text = String(Int(value))
    }
    
    
    @IBOutlet weak var animalAgeDisplay: UILabel!
    
    
    
    private var brain = PetYearCalculatorBrain()
    
    @IBAction func dogButton(sender: UIButton) {
        animalAgeDisplay.text = String(Int(brain.dogAgeCalculation(stepper.value)))
    }
    
    @IBAction func catButton(sender: UIButton) {
        animalAgeDisplay.text = String(Int(brain.catAgeCalculation(stepper.value)))
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

