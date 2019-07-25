//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Bradley Yin on 7/25/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    var planet : Planet?{
        didSet{
            updateViews()
        }
    }
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    private func updateViews(){
        
        guard let planet = planet else {
            return
        }
        imageview.image = planet.image
        nameLabel.text = planet.name
    }
    
    
}
