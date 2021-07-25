//
//  MainViewController.swift
//  setupViewApp
//
//  Created by Константин Прокофьев on 25.07.2021.
//

import UIKit


protocol SetupViewControllerDelegate {
    func setColors(red: CGFloat, green: CGFloat, blue: CGFloat)
    func updateMainScreenBackGroundColor(red: CGFloat, green: CGFloat, blue: CGFloat)
}

class MainViewController: UIViewController {
    
    var mainScreenBackGroundColor: UIColor = UIColor (red: 1, green: 1, blue: 1, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainScreenVC = segue.destination as? SetupViewController else { return}
        mainScreenVC.mainScreenBackGroundColor = mainScreenBackGroundColor
        mainScreenVC.delegate = self
    }
}


extension MainViewController: SetupViewControllerDelegate {
    func updateMainScreenBackGroundColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        mainScreenBackGroundColor = UIColor (red: red, green: green, blue: blue, alpha: 1)
    }
    
    func setColors(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor (red: red, green: green, blue: blue, alpha: 1)
    }
}
