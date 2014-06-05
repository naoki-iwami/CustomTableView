//
//  ViewController.swift
//  test
//
//  Created by Hidetoshi Iida on 2014/06/05.
//  Copyright (c) 2014年 snowhidejp. All rights reserved.
//

import UIKit

class CTViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView
    
    //Dammy Data Set
    var productList = [
        CTModel(titleName:"Apple", categoryName:"fruit"),
        CTModel(titleName:"Peach", categoryName:"fruit"),
        CTModel(titleName:"Pineapple", categoryName:"fruit"),
        CTModel(titleName:"BaseBall", categoryName:"sports"),
        CTModel(titleName:"SnowBoard", categoryName:"sports"),
        CTModel(titleName:"iMac", categoryName:"device"),
        CTModel(titleName:"iPhone", categoryName:"device"),
        CTModel(titleName:"iWatch", categoryName:"device"),
    ]
    
    // view読み込み後
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // セクションの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }

    // セクション高さ
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 100
    }
    
    // セル表示
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath:NSIndexPath!) -> UITableViewCell! {
        //cell deque
        let cell: CTViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as CTViewCell
        //cell中身セット（引数　セル、indexPath）
        cell.configureCell(productList[indexPath.row], atIndexPath : indexPath)

        return cell
    }
    
}

