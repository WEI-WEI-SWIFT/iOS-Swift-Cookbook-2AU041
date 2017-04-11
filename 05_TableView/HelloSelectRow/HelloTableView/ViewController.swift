//********************************************************************
//********************************************************************
//************************ Select Row Number *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    //建立兩個類別的資料，存在陣列裡面，之後用來顯示
    let animalArray = ["cat","dog","elephant","rabbit"]
    let fruitArray = ["apple","banana","mango","watermelon"]
    
    func numberOfSections(in tableView: UITableView) -> Int{
        //要顯示幾個Section，範例中顯示2個sections
        return 2
    }
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        //Section裡面要顯示的列數，
        //第0個Section要顯示animalArray的列數；
        //不是第0個Section的話，要顯示fruitArray的列數
        if section == 0{
            return animalArray.count
        }else{
            return fruitArray.count
        }
    }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //設定Cell的文字，第0個Section要顯示animalArray的資料；
        //不是第0個Section的話，要顯示fruitArray的資料
        if indexPath.section == 0{
            cell.textLabel?.text = animalArray[indexPath.row]
        }else{
            cell.textLabel?.text = fruitArray[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //設定每個section中title的文字
        if section == 0{
            return "ANIMAL"
        }else{
            return "FRUIT"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //設定每個header的高度
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select section: \(indexPath.section)")
        print("select row: \(indexPath.row)")
        if indexPath.section == 0{
            print("select animal name: \(animalArray[indexPath.row])")
        }else{
            print("select fruit name: \(fruitArray[indexPath.row])")
        }
        
        //取消選取的狀態
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
