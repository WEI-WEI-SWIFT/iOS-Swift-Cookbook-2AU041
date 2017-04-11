//********************************************************************
//********************************************************************
//************************* Pull to Refresh **************************
//********************************************************************
//********************************************************************

import UIKit

class MyTableViewController: UITableViewController {
    let myRefreshControl = UIRefreshControl() // 生成UIRefreshControl
    let animalArray = ["cat","dog","elephant","rabbit"] //原本準備顯示的資料
    let newAnimalArray = ["monkey","mouse","cow","sheep","pig"] //下拉表格視圖後要顯示的新資料
    var tableData = [String]() //把要上面定義的、要顯示的資料存在tableData，讓TableView去顯示tableData的資料。
    override func viewDidLoad() {
        tableData = animalArray // 先把animalArray存在 tableArray，讓表格視圖顯示tableArray的資料。
        //把上面的生成的屬性myRefreshControl設定給TableViewController裡面的refreshControl。
        self.refreshControl = myRefreshControl
        self.refreshControl!.addTarget(self, action:#selector(MyTableViewController.refreshList), for: .valueChanged)
        
        //如果tableView被狀態列蓋到的話，用下面的程式碼，把tableview整個往下移20pt
        self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
        
        //如果不是TableViewController，而是在ViewController裡面的TableView要加上myRefreshControl的話
        //要把tableView變成一個屬性。並且把這個屬性用程式碼包在一個TableViewController裡面。
        //把UIRefreshControl加到那個用程式生成的TableViewController上。
        //以下為程式碼(假設tableView在ViewController裡面當作一個屬性其名為myTableView)：
        //let tvController = UITableViewController() //生出一個table view controller
        //tvController.tableView = self.myTableView  //把tableview包進去
        //tvController.refreshControl = self.refreshControl //設定UIRefreshControl
        //self.refreshControl!.addTarget(self, action:#selector(MyTableViewController.refreshList), for: .valueChanged)
    }
    
    func refreshList(){
        self.tableData = newAnimalArray
        self.tableView.reloadData()
        self.refreshControl!.endRefreshing()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count //TableView每個section要顯示幾列資料
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = tableData[indexPath.row] //設定每列顯示的文字
        return cell
    }
}
