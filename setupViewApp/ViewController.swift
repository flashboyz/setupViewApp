//
//  ViewController.swift
//  setupViewApp
//
//  Created by Константин Прокофьев on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //slider
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        //label
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
        //view
        
    }
    
    @IBAction func redSliderChanges() {
        redLabel.text = String(redSlider.value)
        
        let greenSliderValue = CGFloat(greenSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)

        mainView.backgroundColor = UIColor.init(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }
    
    @IBAction func greenSliderChanges() {
        greenLabel.text = String(greenSlider.value)
        
        let greenSliderValue = CGFloat(greenSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)

        mainView.backgroundColor = UIColor.init(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }
    
    @IBAction func blueSliderChanges() {
        blueLabel.text = String(blueSlider.value)
        
        let greenSliderValue = CGFloat(greenSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)

        mainView.backgroundColor = UIColor.init(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
    }
    
}



