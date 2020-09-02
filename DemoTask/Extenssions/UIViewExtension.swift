//
//  UIViewExtension.swift
//  iSave
//
//  Created by Apple on 22/04/19.
//  Copyright © 2019 Konstant info Solutions Pvt. Ltd. All rights reserved.
//

import Foundation

import UIKit

extension UIView {
    
    func addBottomShadow() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 5.0) //CGSize(width: 0.0, height: 15.0)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 5.0//0.0
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 32.0
    }
    
    func addCornerRadiusWithShadow(color: UIColor, borderColor: UIColor, cornerRadius: CGFloat) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 6.0
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = 1.0
        self.layer.masksToBounds = false
    }
    
    func addShadowWithColor(color: UIColor) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 15.0
        self.layer.masksToBounds = false
    }
    
    func setCornerRadiusWith(radius: Float, borderWidth: Float, borderColor: UIColor) {
        self.layer.cornerRadius = CGFloat(radius)
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor.cgColor
        self.layer.masksToBounds = true
    }
}
