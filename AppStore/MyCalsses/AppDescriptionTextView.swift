//
//  AppDescriptionTextView.swift
//  AppStore
//
//  Created by getTrickS2 on 2/22/18.
//  Copyright © 2018 Nik's. All rights reserved.
//

import UIKit

class AppDescriptionTextView: UITextView {

    // MARK: - Variables ====================
    var appName = ""
    var appCategory = ""
    var appPrice = 0.0
    // ======================================
    
    // MARK: - Inits ========================
    convenience init(_ appName: String, _ appCategory: String, _ appPrice: Double) {
        self.init()
        
        self.appName = appName
        self.appCategory = appCategory
        self.appPrice = appPrice
        
        setupText()
    }
    // ======================================
    
    // MARK: - Fanctions ====================
    func setupText() {
        let attributedText = NSMutableAttributedString(string: appName + "\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 13)])
        attributedText.append(NSAttributedString(string: appCategory + "\n" + "$\(appPrice)",
            attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 11), NSAttributedStringKey.foregroundColor : UIColor.gray]))
        self.attributedText = attributedText
    }
    // ======================================
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}
