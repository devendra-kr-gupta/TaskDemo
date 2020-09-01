
//
//  TableViewCell.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewHome: UICollectionView!
    var indexpath : IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let cellNib = UINib(nibName: "TopCell", bundle: nil)
        self.collectionViewHome.register(cellNib, forCellWithReuseIdentifier: "TopCellIdentifier")
        self.collectionViewHome.register(cellNib, forCellWithReuseIdentifier: "CategoryCellIdentifier")
        self.collectionViewHome.register(cellNib, forCellWithReuseIdentifier: "CommonCellIdentifier")
//        self.collectionViewHome.register(cellNib, forCellWithReuseIdentifier: "CategoryCellIdentifier")
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension TableViewCell: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0       }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 328.0, height: 150.0)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        if self.indexpath.row == 0 {
            let cell: TopCell = collectionViewHome.dequeueReusableCell(withReuseIdentifier: "TopCellIdentifier", for: indexPath) as! TopCell
        
            return cell
//
//        }else {
//            let categoryCell: CategoryCell = collectionViewHome.dequeueReusableCell(withReuseIdentifier: "CategoryCellIdentifier", for: indexPath) as! CategoryCell
//
//            return categoryCell
//        }
        
        
    }
    
    
    
}
