//
//  ViewController.swift
//  AppStore
//
//  Created by getTrickS2 on 2/20/18.
//  Copyright © 2018 Nik's. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    // MARK: - Variables =========================================================
    private let cellId = "cellId"
    // ===========================================================================

    // MARK: - Override functions ================================================
    
    // MARK: ControllerDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        // Customizing the collectionView
        collectionView?.backgroundColor = UIColor.white
        // Register cells for the collectionView
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId) // CHANGE IT: Why without UINib???
    }
    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        cell.configureCell()
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }
    // ===========================================================================

}

























