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
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        userDefault.set(sender.isOn, forKey: "ShouldShowPluto")
    }
    
    
    private func updateViews(){
        shouldShowPlutoSwitch.isOn = userDefault.bool(forKey: "ShouldShowPluto")
    }
    

}
