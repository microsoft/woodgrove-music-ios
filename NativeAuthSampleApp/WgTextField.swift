//
//  WgTextField.swift
//  NativeAuthSampleApp
//
//  Created by yoelhor on 21/04/2024.
//

import Foundation
import UIKit

class WgTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpField()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init( coder: aDecoder )
        setUpField()
    }
    
    
    private func setUpField() {
        //tintColor             = .white
        //textColor             = .darkGray
        //font                  = UIFont(name:"VenirNextCondensedDemiBold", size: 18)
        //backgroundColor       = UIColor(white: 1.0, alpha: 0.5)
        //autocorrectionType    = .no
        //layer.cornerRadius    = 5.0
        //clipsToBounds         = true
        
        //let placeholder       = self.placeholder != nil ? self.placeholder! : ""
        //let placeholderFont   = UIFont(name:"VenirNextCondensedDemiBold", size: 18)!
        //attributedPlaceholder = NSAttributedString(string: placeholder, attributes:
        //    [NSAttributedString.Key.foregroundColor: UIColor.lightGray,
        //     NSAttributedString.Key.font: placeholderFont])
        
        //let indentView        = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 20))
        //leftView              = indentView
        //leftViewMode          = .always
    }
}
