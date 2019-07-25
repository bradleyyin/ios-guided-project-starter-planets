//
//  SettingsViewController.swift
//  Planets
//
//  Created by Bradley Yin on 7/25/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
    }
    
    private func updateViews(){
        let userDefault = UserDefaults.standard
        shouldShowPlutoSwitch.isOn = userDefault.bool(forKey: "ShouldShowPluto")
    }
    

}
