//
//  AppCell.swift
//  AppStore
//
//  Created by getTrickS2 on 2/20/18.
//  Copyright © 2018 Nik's. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell {
    
    // MARK: - Inits =================================
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // ===============================================
    
    // MARK: - Functions =============================
    func setupViews() {
        // 1. Customize CategoryCell
        self.backgroundColor = UIColor.black
        // 2. Customize new Subviews
        
    }
    // ===============================================
}
