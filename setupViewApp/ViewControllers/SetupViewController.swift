//
//  ViewController.swift
//  setupViewApp
//
//  Created by Константин Прокофьев on 09.07.2021.
//

import UIKit


class SetupViewController: UIViewController {
        
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    var mainScreenBackGroundColor: UIColor?
    var delegate: SetupViewControllerDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 15
        
        
        redSlider.maximumTrackTintColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
        redSlider.minimumTrackTintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        greenSlider.maximumTrackTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        greenSlider.minimumTrackTintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        blueSlider.maximumTrackTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        blueSlider.minimumTrackTintColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        
        updateSliderToLabel()
        setTextFied()
        setColor()
        setBackGroundColor()
    }
    

    
    @IBAction func rgbChanges(_ sender: UISlider) {
        setColor()
        setTextFied()
        updateSliderToLabel()
    }
    
    
    @IBAction func doneButton() {
        guard let doubleRedLabel = Double(redLabel.text ?? "0") else {return}
        guard let doubleGreenLabel = Double(greenLabel.text ?? "0") else {return}
        guard let doubleBlueLabel = Double(blueLabel.text ?? "0") else {return}
        
        delegate.setColors(
            red: CGFloat(doubleRedLabel),
            green: CGFloat(doubleGreenLabel),
            blue: CGFloat(doubleBlueLabel)
        )
        delegate.updateMainScreenBackGroundColor(
            red: CGFloat(doubleRedLabel),
            green: CGFloat(doubleGreenLabel),
            blue: CGFloat(doubleBlueLabel)
        )
        dismiss(animated: true)
    }
    
    
    // MARK: -private function
    
    private func updateSliderToLabel() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setBackGroundColor() {
        mainView.backgroundColor = mainScreenBackGroundColor
        
    }
    
    private func setTextFied() {
        redTextField.text = redLabel.text
        greenTextField.text = greenLabel.text
        blueTextField.text = blueLabel.text
    }
    
    private func setColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach {label in
            switch label {
            case redLabel:
                label.text = string(from: redSlider)
            case greenLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
