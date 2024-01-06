//
//  ViewController.swift
//  ColorPicker
//
//  Created by Brenda Henriquez on 1/6/24.
//

import UIKit

class ViewController: UIViewController {
    //connections
    // 1. outlets -> varaibles refer to UI elements on our storyboard, if you want the element itself to change
    // 2. actions -> functions that are tied to UI elements
    
   
    @IBOutlet weak var colorView2: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    

    @IBOutlet weak var redSlider2: UISlider!
    @IBOutlet weak var greenSlider3: UISlider!
    @IBOutlet weak var blueSlider2: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView2.layer.borderWidth = 5
        colorView2.layer.borderWidth = 20
        colorView2.layer.borderColor = UIColor.black.cgColor
        updateColor()
        updateControls()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
        
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        // Set all sliders to their minimum value
        redSlider2.value = 0.5
        greenSlider3.value = 0.5
        blueSlider2.value = 0.5

        // Optionally, turn all switches on
        redSwitch.setOn(true, animated: true)
        greenSwitch.setOn(true, animated: true)
        blueSwitch.setOn(true, animated: true)

        // Update the controls and the color
        updateControls()
        updateColor()
        
    }
    
    
    
    func updateControls() {
        redSlider2.isEnabled = redSwitch.isOn
        greenSlider3.isEnabled = greenSwitch.isOn
        blueSlider2.isEnabled = blueSwitch.isOn
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn{
            red = CGFloat(redSlider2.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider3.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider2.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
       colorView2.backgroundColor = color
        
    }


}

