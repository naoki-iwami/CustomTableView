//
//  CTModel.swift
//  CustomTable
//
//  Created by Hidetoshi Iida on 2014/06/05.
//
//

import UIKit

class CTModel: NSObject {

    var titleName:NSString      //タイトルネーム
    var categoryName:NSString   //カテゴリネーム
    
    // initialize
    init(titleName: String, categoryName: String) {
        self.titleName = titleName
        self.categoryName = categoryName
    }
    

}
