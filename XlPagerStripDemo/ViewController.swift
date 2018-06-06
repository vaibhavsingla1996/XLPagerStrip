//
//  ViewController.swift
//  XlPagerStripDemo
//
//  Created by Vaibhav Singla on 05/06/18.
//  Copyright © 2018 Vaibhav Singla. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        self.loadDesign()
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let tableOne = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableOne")
        
        let tableTwo = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableTwo")
        let tableThree = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableThree")
        
        
        return [tableOne,tableTwo,tableThree]
    }
    
    func loadDesign(){
        self.settings.style.buttonBarHeight = 100
        self.settings.style.buttonBarBackgroundColor = .black
        self.settings.style.buttonBarItemBackgroundColor = .black
        self.settings.style.selectedBarBackgroundColor = .white
        self.settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 21)
        self.settings.style.selectedBarHeight = 4.0
        self.settings.style.buttonBarMinimumLineSpacing = 0
        self.settings.style.buttonBarItemTitleColor = .white
        self.settings.style.buttonBarItemsShouldFillAvailableWidth = true
        self.settings.style.buttonBarLeftContentInset = 0
        self.settings.style.buttonBarRightContentInset = 0
        changeCurrentIndexProgressive = {(oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool)-> Void in
            guard changeCurrentIndex == true else {
                return
            }
            oldCell?.label.textColor = .white
            newCell?.label.textColor = .white
        }
        
    }
    
    
}

