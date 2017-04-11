//********************************************************************
//********************************************************************
//********** Table View With Thumbnail and AccessoryType *************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UITableViewDelegate,
                                            UITableViewDataSource {
    let animalArray = ["cat","dog","elephant","rabbit"]
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                        numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func tableView(_ tableView: UITableView,
            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //每一列TableViewCell要顯示的資料
        //先產出Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //設定Cell的文字
        cell.textLabel?.text = animalArray[indexPath.row]
                
        //設定Cell的縮圖
        cell.imageView?.image =
                        UIImage(named: animalArray[indexPath.row])
        //設定儲存格右邊箭頭
        cell.accessoryType = .disclosureIndicator
                                                    
        return cell
    }
}
