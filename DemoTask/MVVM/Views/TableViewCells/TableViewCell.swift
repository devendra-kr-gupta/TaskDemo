
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
    /// Reference to UIPageControl to indicate page number to the user
    @IBOutlet weak var pageControl: UIPageControl!

    
    var dataArr : [String]!
    var indexpath : IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let cellNib = UINib(nibName: "TopCell", bundle: nil)
        self.collectionViewHome.register(cellNib, forCellWithReuseIdentifier: "TopCellIdentifier")
        let categoryCellNib = UINib(nibName: "CategoryCell", bundle: nil)
        self.collectionViewHome.register(categoryCellNib, forCellWithReuseIdentifier: "CategoryCellIdentifier")
        let commonCellNib = UINib(nibName: "CommonCell", bundle: nil)
        self.collectionViewHome.register(commonCellNib, forCellWithReuseIdentifier: "CommonCellIdentifier")
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    /// Setting up data into respective cells according to data
    /// - Parameter indexPath: cell index path
    /// - Parameter array: array of data
    func setupCell(at indexPath: IndexPath, array: [String]) {
        dataArr = array
        self.indexpath = indexPath
        collectionViewHome.reloadData()
    }

}
// MARK: - UICollectionView Delegates, Datasource
extension TableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0.0)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if self.indexpath.section == 0 {
//            return CGSize(width: (SCREEN_WIDTH * (328.0 / 375.0)), height: (SCREEN_HEIGHT * (152.0 / 667.0)))
//            return CGSize.init(width: (SCREEN_WIDTH * (348.0 / 375.0)), height: 150.0)
            return CGSize.init(width: (SCREEN_WIDTH * (328.0 / 375.0)), height: 150.0)
        }else if self.indexpath.section == 1 {
            return CGSize.init(width: (SCREEN_WIDTH * (113.0 / 375.0)), height: 144.0)
        }else {
            return CGSize.init(width: (SCREEN_WIDTH * (178.0 / 375.0)), height: 245.0)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        pageControl.isHidden = true
        if self.indexpath.section == 0 {
            let cell: TopCell = collectionViewHome.dequeueReusableCell(withReuseIdentifier: "TopCellIdentifier", for: indexPath) as! TopCell
            pageControl.isHidden = false
            return cell
            
        }else if self.indexpath.section == 1 {
            let categoryCell: CategoryCell = collectionViewHome.dequeueReusableCell(withReuseIdentifier:
                "CategoryCellIdentifier", for: indexPath) as! CategoryCell
            categoryCell.categoryName.text = dataArr[indexPath.row]
            
            return categoryCell
        }else {
            let commonCell: CommonCell = collectionViewHome.dequeueReusableCell(withReuseIdentifier: "CommonCellIdentifier", for: indexPath) as! CommonCell
            commonCell.buttonAdd.isHidden = true
            commonCell.stackViewItem.isHidden = false
            if indexPath.item == 1 {
                commonCell.buttonAdd.isHidden = false
                commonCell.stackViewItem.isHidden = true
            }
            
            commonCell.labelItemName.text = dataArr[indexPath.row]
            
            return commonCell
        }
    }
    
    // MARK: - ScrollView Delegate Methods
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {

        for cell in self.collectionViewHome.visibleCells as [UICollectionViewCell] {
            let indexPath = collectionViewHome.indexPath(for: cell)
            pageControl.currentPage = indexPath!.row
        }
    }
    
}
