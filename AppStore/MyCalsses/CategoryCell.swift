//
//  CategoryCell.swift
//  AppStore
//
//  Created by getTrickS2 on 2/20/18.
//  Copyright © 2018 Nik's. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // MARK: - Variables =============================
    let cellId = "AppCellId"
    let borderConstreint = CGFloat(14)
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "App Category"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let appsCollectionView: UICollectionView = {
       // 1. Create collectionView
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        // 2. Customize the collectionView
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    let dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // ===============================================
    
    // MARK: - Inits =================================
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // ===============================================
    
    // MARK: - Functions =============================
    func configureCell() {
        // 1. Customize CategoryCell
        self.backgroundColor = UIColor.clear
        // 1.2 Customize appsCollectionView
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        // 2. Add new Subviews
        addSubview(categoryLabel)
        addSubview(appsCollectionView)
        addSubview(dividerView)
        // 3. Add Constraints for "categoryLabel", "appsCollectionView", "deviderView"
        //                                                           "H:|-8-[v0]-8-]|"
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-\(borderConstreint)-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : categoryLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : appsCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-\(borderConstreint)-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : dividerView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[categoryLabel(30)][v0][v1(0.5)]|", options: NSLayoutFormatOptions(), metrics: nil,
                                                      views: ["categoryLabel": categoryLabel , "v0" : appsCollectionView , "v1" : dividerView]))

    }
    // ===============================================
    
    // MARK: - Override Functions ====================
    
    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = appsCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppCell
        cell.configureCell()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: borderConstreint, bottom: 0, right: borderConstreint)
    }
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: appsCollectionView.frame.height)
    }
    // ===============================================
}
































