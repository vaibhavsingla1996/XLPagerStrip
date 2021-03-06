//
//  TableViewControllerOneTableViewController.swift
//  XlPagerStripDemo
//
//  Created by Vaibhav Singla on 05/06/18.
//  Copyright © 2018 Vaibhav Singla. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TableViewControllerOne: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }



    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath) as! TableViewCellOne

        return cell
    }

}

extension TableViewControllerOne: IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "😍")
    }
}
