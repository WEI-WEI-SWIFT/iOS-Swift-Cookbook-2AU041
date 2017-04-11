//********************************************************************
//********************************************************************
//************************ Split View Controller *********************
//********************************************************************
//********************************************************************

import UIKit

class MasterViewController: UITableViewController {
    
    let appleProduct = ["iPhone","iPad","iPod","AppleTV","Apple Watch","Mac"] //要顯示的資料
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        //MasterViewController的TableView要顯示一個section，回傳1
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //MasterViewController的TableView要顯示幾列
        return appleProduct.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //MasterViewController的TableView上每一列要顯示什麼文字
        //先拿到TableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //設定顯示文字，並回傳TableViewCell
        cell.textLabel!.text = appleProduct[indexPath.row]
        return cell
    }
    
    //按下TableView執行prepareForSegue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow{
                //indexPath 儲存使用者選到哪一列
                //用segue.destinationViewController得到包著DetailViewController的NavigationViewController。存在常數 nvc 中
                let nvc = segue.destination as! UINavigationController
                //從nvc拿到嵌入在其中的DetailViewController
                let detailViewController = nvc.topViewController as! DetailViewController
                //設定DetailViewController上方的NavigationBar要顯示的文字
                detailViewController.navigationItem.title = appleProduct[indexPath.row]
                //設定DetailViewController的detailItem屬性
                detailViewController.detailItem = appleProduct[indexPath.row] as AnyObject?
            }
        }
    }
}

