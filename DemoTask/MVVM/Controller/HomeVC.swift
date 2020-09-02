//
//  ViewController.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright ©️ 2020 Devendra Agarwal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var tableHome: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var bottomLine: UILabel!
    
    @IBOutlet var sectionView: UIView!
    
    let sectionArray = ["","Categories","Best Selling","Recommended","How it Works","Why Choose Us"]
    
    lazy var viewModel: HomeViewModel = {
        return HomeViewModel()
    }()

    
    /// Self Methods
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableHome.estimatedRowHeight = (SCREEN_HEIGHT * 190.0) / 667.0
//        tableHome.rowHeight = UITableView.automaticDimension
        self.navigationController?.navigationBar.makeNavigationBarTransparent()

        let logo = UIImage(named: "AnchorFresh-Logo.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
        searchBar.setCornerRadiusWith(radius: 18.0, borderWidth: 0.0, borderColor: .clear)
        bottomLine.addBottomShadow()
//        bottomLine.addShadowWithColor(color: .lightGray)
//        bottomLine.addCornerRadiusWithShadow(color: UIColor.lightGray, borderColor: .clear, cornerRadius: 2.0)

        viewModel.getDataFromjSOnFile()
        
        print(viewModel.modelHomeData)
    }


}
 // MARK: - Tableview Delegates, Datasource
extension HomeVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 50))
        header.backgroundColor = .gray// UIColor.init(red: 243.0, green: 243.0, blue: 243.0, alpha: 1.0)
        let button = UIButton(frame: CGRect(x: SCREEN_WIDTH - 100, y: 5, width: 100, height: 40))
        button.backgroundColor = UIColor.init(red: 182.0, green: 0.0, blue: 8.0, alpha: 1.0)
        button.setTitle("See All", for: .normal)
        header.addSubview(button)
        let label = UILabel(frame: CGRect(x: 10, y: 5, width: SCREEN_WIDTH-100, height: 40))
        label.text = sectionArray[section]
        header.addSubview(label)
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 50
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 5 {
            return 6
        }
        else {
            return 1
        }
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellIdentifier") as! TableViewCell
            switch indexPath.section {
            case 0:
                cell.setupCell(at: indexPath, array: viewModel.modelHomeData[0].offerArray)
                return cell
                
            case 1:
                cell.setupCell(at: indexPath, array: viewModel.modelHomeData[0].catoryArray)
                return cell
                
            case 2,3:
                if indexPath.row == 3 {
                    cell.setupCell(at: indexPath, array: viewModel.modelHomeData[0].bestSellingArray)
                }else {
                    cell.setupCell(at: indexPath, array: viewModel.modelHomeData[0].recommendedArray)
                    
                }
                return cell
            case 4:
                let howCell = tableView.dequeueReusableCell(withIdentifier: "HowItWorksCellIdentifier") as! HowItWorksCell
                return howCell
                
            default:
                let whyCell = tableView.dequeueReusableCell(withIdentifier: "WhyChooseUsCellIdentifier") as! WhyChooseUsCell
                whyCell.labelCount.text = "\(indexPath.row+1)"
                whyCell.labelTitle.text = "Lorem Ipsum is a dummy content that is placed instead of text"
                
                return whyCell
                
                
            }
//        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
//        if indexPath.section == 5 {
//            return (SCREEN_HEIGHT * (74.0 / 667.0))
//        }else {
            if indexPath.section == 0 {
                return 155.0
//                return (SCREEN_HEIGHT * (155.0 / 667.0))
            }else if indexPath.section == 1 {
                return 144.0
//                return (SCREEN_HEIGHT * (144.0 / 667.0))
            }else if indexPath.section == 2 || indexPath.section == 3 {
                return 245.0
//                return (SCREEN_HEIGHT * (245.0 / 667.0))
            }else if indexPath.section == 4 {
                return (SCREEN_HEIGHT * (274.0 / 667.0))
            }else {
                return (SCREEN_HEIGHT * (74.0 / 667.0))
        }
//        }
    }

}
