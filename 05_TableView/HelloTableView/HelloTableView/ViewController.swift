//********************************************************************
//********************************************************************
//************************ Simple Table View *************************
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
}
