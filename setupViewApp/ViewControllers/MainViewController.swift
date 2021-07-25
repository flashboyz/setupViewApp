//
//  MainViewController.swift
//  setupViewApp
//
//  Created by Константин Прокофьев on 25.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var mainScreenBackGroundColor: UIColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainScreenVC = segue.destination as? SetupViewController else { return}
        mainScreenVC.mainScreenBackGroundColor = mainScreenBackGroundColor
    }
}
