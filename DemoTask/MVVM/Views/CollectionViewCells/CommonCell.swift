//
//  CommonCell.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//

import UIKit

class CommonCell: UICollectionViewCell {

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var labelItemName: UILabel!
    
    @IBOutlet weak var stackViewItem: UIStackView!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonCount: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    
    @IBOutlet weak var buttonAdd: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        containerView.setCornerRadiusWith(radius: 11.0, borderWidth: 1.0, borderColor:UIColor.init(red: 243.0, green: 243.0, blue: 243.0, alpha: 0.5))
        
        buttonAdd.setCornerRadiusWith(radius: 13.0, borderWidth: 0.0, borderColor:.clear)
        
        buttonPlus.setCornerRadiusWith(radius: 13.0, borderWidth: 0.0, borderColor:.clear)
        buttonPlus.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        buttonMinus.setCornerRadiusWith(radius: 13.0, borderWidth: 0.0, borderColor:.clear)
        buttonMinus.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]

        
        
    }

}
