//
//  WgForm.swift
//  NativeAuthSampleApp
//
//  Created by yoelhor on 21/04/2024.
//

import UIKit
import SwiftUI

class WgForm: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStackView()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupStackView()
    }
    
 
    private func setupStackView() {
        //tintColor             = .white

        backgroundColor       = UIColor(white: 1.0, alpha: 0.8)
        //backgroundColor       = UIColor(red: 39/255, green: 124/255, blue: 15/255, alpha: 0.3)
        
        layer.cornerRadius    = 15.0
        clipsToBounds         = true
        layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        isLayoutMarginsRelativeArrangement = true
        
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
    }
}
