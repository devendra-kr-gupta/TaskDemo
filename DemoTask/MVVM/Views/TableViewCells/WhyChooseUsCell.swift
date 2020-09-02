//
//  WhyChooseUsCell.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 02/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//

import UIKit

class WhyChooseUsCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var labelTitle: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        containerView.setCornerRadiusWith(radius: 5.0, borderWidth: 1.0, borderColor:UIColor.init(red: 253.0, green: 247.0, blue: 247.0, alpha: 1.0))
        labelCount.setCornerRadiusWith(radius: Float(21.5*scaleFactorX), borderWidth: 0.0, borderColor: .white)
        labelCount.clipsToBounds = true
        
        
    }

}
