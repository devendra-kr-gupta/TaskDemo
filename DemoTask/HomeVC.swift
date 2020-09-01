//
//  ViewController.swift
//  DemoTask
//
//  Created by Devendra Agarwal on 01/09/20.
//  Copyright © 2020 Devendra Agarwal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var tableHome: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
 // MARK: - Tableview Delegates
extension HomeVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellIdentifier") as! TableViewCell
        
        return cell
//        return viewModel.setupTableView(cell:cell ,at: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
//        return indexPath.row == 0 ? (SCREEN_HEIGHT * (116.0 / SCREEN_HEIGHT))  : (SCREEN_HEIGHT * (92.0 / SCREEN_HEIGHT))
    }
    
   
}
