//********************************************************************
//********************************************************************
//**************************** Move Row ******************************
//********************************************************************
//********************************************************************


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    //建立顯示的資料，存在NSMutableArray型別的陣列裡面
    let animalArray:NSMutableArray = ["cat","dog","elephant","rabbit"]
    
    @IBAction func editButtonPress(_ sender: UIBarButtonItem) {
        if myTableView.isEditing == true{
            sender.title = "Edit"
            myTableView.isEditing = false
        }else{
            sender.title = "Done"
            myTableView.isEditing = true
        }
    }
    
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
        cell.textLabel?.text = animalArray[indexPath.row] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        animalArray.exchangeObject(at: sourceIndexPath.row, withObjectAt: destinationIndexPath.row)
    }
}
