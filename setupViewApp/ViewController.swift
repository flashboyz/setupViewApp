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
        redSlider.maximumTrackTintColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
        redSlider.minimumTrackTintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.maximumTrackTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        greenSlider.minimumTrackTintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.maximumTrackTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        blueSlider.minimumTrackTintColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        
        //label
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
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



