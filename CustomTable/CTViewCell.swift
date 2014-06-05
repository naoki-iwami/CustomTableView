//
//  viewCell.swift
//  test
//
//  Created by Hidetoshi Iida on 2014/06/05.
//  Copyright (c) 2014年 snowhidejp. All rights reserved.
//

import UIKit

class CTViewCell: UITableViewCell {
    
    @IBOutlet var titleLable : UILabel
    @IBOutlet var categoryName : UILabel
    
    //Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLable.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 0.8)
        categoryName.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 0.8)
        
    }
    
    // セル内セット
    func configureCell(texts:CTModel, atIndexPath indexPath: NSIndexPath){

        titleLable.text = texts.titleName
        categoryName.text = texts.categoryName
        
    }
    
    
}