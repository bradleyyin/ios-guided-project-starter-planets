//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Bradley Yin on 7/25/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit



class PlanetsCollectionViewController: UICollectionViewController {
    let planetController = PlanetController()

    override func viewDidLoad() {
        super.viewDidLoad()

    

     

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }




    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else{return UICollectionViewCell()}
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
    
        // Configure the cell
    
        return cell
    }

 
    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue){}
}
