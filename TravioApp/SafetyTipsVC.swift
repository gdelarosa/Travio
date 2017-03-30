//
//  ViewController.swift
//  guide
//
//  Created by mehul patel on 2017-01-26.
//  Copyright © 2017 mehul patel. All rights reserved.
//

import UIKit

class SafetyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
               
    @IBOutlet weak var collView: UICollectionView!
   
    
    let imageArray = [UIImage(named: "travAlone"),UIImage(named: "Public"),UIImage(named: "Defense"),UIImage(named: "Bus")]
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        
        cell.imageCell.image = self.imageArray[indexPath.row]
        cell.imageCell.layer.cornerRadius = 10.0
        cell.imageCell.clipsToBounds = true
        
        return cell
        
    }
    
    
}

