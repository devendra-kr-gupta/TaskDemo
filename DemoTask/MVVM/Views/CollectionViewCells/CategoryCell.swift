//
//  CategoryCell.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        containerView.setCornerRadiusWith(radius: 5.0, borderWidth: 1.0, borderColor: .clear)

    }

}
