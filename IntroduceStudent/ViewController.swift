//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Edwin Dake on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorToggleSwitch: UISwitch!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var majorTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var gradYearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red: 144/255.0, green: 240/255.0, blue: 252/255.0, alpha: 1)
    }
    
    @IBAction func morePetsStepperFunction(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func IntroduceSelfFunction(_ sender: UIButton) {
        var want: String = "want"
        if morePetsSwitch.isOn == false {
            want = "do not " + want
        }
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
    
        let introduction = "Hey there! My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently a \(year!) majoring in \(majorTextField.text!). I currently own \(numberOfPetsLabel.text!) pets. I \(want) more pets. I am looking forward to graduating in \(gradYearTextField.text!)! Yay!"
               
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
               
        alertController.addAction(action)
               
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func colorSwitch(_ sender: UISwitch) {
        // generate RGB values for background color
        let redColor = Double.random(in: 0.0 ..< 255.0)
        let greenColor = Double.random(in: 0.0 ..< 255.0)
        let blueColor = Double.random(in: 0.0 ..< 255.0)
        // set background color
        self.view.backgroundColor = UIColor(red: redColor/255.0, green: greenColor/255.0, blue: blueColor/255.0, alpha: 1)
    }
    
    @IBAction func resetColor(_ sender: UIButton) {
        // reset background color
        self.view.backgroundColor = UIColor(red: 144/255.0, green: 240/255.0, blue: 252/255.0, alpha: 1)
    }
}
