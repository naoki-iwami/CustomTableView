## CustomTableView - simple custom table view using swift
===============

I wrote swift to make simple CustomTableView.

## MVC
- Model : CTModel.swift
- View : CTViewCell, CTMain.storyboard
- Controller : CTViewController.swift

Create Dammy data in CTViewController
```objc
    //Dammy Data Set
    var productList = [
        CTModel(titleName:"Apple", categoryName:"fruit"),
        CTModel(titleName:"Peach", categoryName:"fruit"),
```

Show cell data in
```objc
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath:NSIndexPath!) -> UITableViewCell! {
        //cell deque
        let cell: CTViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as CTViewCell
        //cell中身セット（引数　セル、indexPath）
        cell.configureCell(productList[indexPath.row], atIndexPath : indexPath)

        return cell
    }
```

Set cell data in CTViewCell
```objc
    func configureCell(texts:CTModel, atIndexPath indexPath: NSIndexPath){

        titleLable.text = texts.titleName
        categoryName.text = texts.categoryName  
    }
```

Defin CTModel
```objc
class CTModel: NSObject {

    var titleName:NSString      //タイトルネーム
    var categoryName:NSString   //カテゴリネーム
    
    // initialize
    init(titleName: String, categoryName: String) {
        self.titleName = titleName
        self.categoryName = categoryName
    }
}
```