//
//  WgButton.swift
//  NativeAuthSampleApp
//
//  Created by yoelhor on 21/04/2024.
//

import UIKit
import SwiftUI

class WgButton: UIButton {
        
    var activityView = UIActivityIndicatorView(style: .medium)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    public func StartAnimation() {
        activityView.startAnimating()
    }
    
    public func StopAnimation() {
        activityView.stopAnimating()
    }
    
    private func setupButton() {
        titleLabel?.font    = UIFont(name:"VenirNextCondensedDemiBold", size: 22)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.white, for: .normal)
        
        let container: UIView = UIView()
            container.frame = CGRect(x: 20, y: 7, width: 20, height: 20) // Set X and Y whatever you want
            container.backgroundColor = .clear
            
        activityView.color  = UIColor.white
            //activityView.center = self.view.center
            
            container.addSubview(activityView)
            self.addSubview(container)
        
    }
}
