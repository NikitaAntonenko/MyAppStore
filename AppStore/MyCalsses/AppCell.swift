//
//  AppCell.swift
//  AppStore
//
//  Created by getTrickS2 on 2/20/18.
//  Copyright © 2018 Nik's. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell {
    
    // MARK: - Variables =============================
    let viewForImage: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Icon")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    let textView: AppDescriptionTextView = {
        let text = AppDescriptionTextView("Disney App It: Frozen!", "Games", 3.99)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .clear
        return text
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
        // self.backgroundColor = UIColor.yellow
        // 2. Add Subviews
        self.addSubview(viewForImage)
        self.addSubview(imageView)
        self.addSubview(textView)
        // 3. Customize new Subviews
        // 3.1 For viewForImage
        viewForImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        viewForImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        viewForImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        viewForImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        // 3.2 For imageView
        imageView.centerXAnchor.constraint(equalTo: viewForImage.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: viewForImage.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: viewForImage.heightAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: viewForImage.widthAnchor).isActive = true
        // 3.3 For textView
        textView.topAnchor.constraint(equalTo: viewForImage.bottomAnchor).isActive = true
        textView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        textView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    // ===============================================
}

















