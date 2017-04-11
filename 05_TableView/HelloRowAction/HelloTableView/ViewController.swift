//********************************************************************
//********************************************************************
//*********************** UITableViewRowAction ***********************
//********************************************************************
//********************************************************************


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    //建立顯示的資料，存在陣列裡面
    let animalArray = ["cat","dog","elephant","rabbit"]
    
    func numberOfSections(in tableView: UITableView) -> Int{
        //要顯示幾個Section，範例中只顯示一個section
        return 1
    }
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        //Section裡面要顯示的列數，範例中顯示animalArray的數量。
        return animalArray.count
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //每一列TableViewCell要顯示的資料
        //先產出Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //設定Cell的文字
        cell.textLabel?.text = animalArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //***** 產生第一顆按鈕 *****
        //設定按鈕的風格(style)、要顯示的文字(title)，以及按下去執行的程式碼。
        //按下去的程式碼寫在一個Closure裡面。此範例中，第一個按鈕下去只是印出share。
        //印出後用tableView.editing = false，就會讓表格視圖回復成一般狀態。
        let shareAction = UITableViewRowAction(style: .normal, title: "Share", handler:{
            (action,indexPath) in
            print("share")
            tableView.isEditing = false
        })
        //調整第一顆按鈕的背景顏色。
        shareAction.backgroundColor = UIColor.blue
        
        //***** 產生第二顆按鈕 *****
        let doneAction = UITableViewRowAction(style: .normal, title: "Done", handler:{
            (action,indexPath) in
            print("Done")
            tableView.isEditing = false
        })
        doneAction.backgroundColor = UIColor.gray
        
        //***** 產生第三顆按鈕 *****
        let deleteAction = UITableViewRowAction(style: .normal, title: "Delete", handler:{
            (action,indexPath) in
            print("Delete")
            tableView.isEditing = false
        })
        deleteAction.backgroundColor = UIColor.red
        return [deleteAction,shareAction,doneAction]       //回傳三顆按鈕
    }
}
