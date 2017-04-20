//********************************************************************
//********************************************************************
//**************************** Picker View ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,
                                                UIPickerViewDelegate {
    //首先先把要顯示的資料分別存在兩個Array
    let numberArray = ["1","2","3","4","5","6","7","8","9","10"]
    let fruitArray = ["apple","banana","mango","watermelon"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2   //有多少個 component
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //設定每個 component 有幾列
        if component == 0{
            return numberArray.count //第一個Component要顯示的數量
        }else{
            return fruitArray.count  //第二個Component要顯示的數量
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return numberArray[row]  //第一個Component要顯示的文字
        }else{
            return fruitArray[row]   //第二個Component要顯示的文字
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            print("number: \(numberArray[row])") //點擊第一個Component
        }else{
            print("fruit: \(fruitArray[row])")   //點擊第二個Component
        }
    }

    /********************** 單一類別選項的做法 *************************
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1   //有多少個 component
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numberArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("number: \(numberArray[row])")
    }
    */
    
    /********************** 用程式碼產生 UIPickerView *************************
    override func viewDidLoad() {
        //產生Picker View
        let codePickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 216))
        //指定dataSource跟delegate
        codePickerView.dataSource = self
        codePickerView.delegate = self
        //把PickerView加到畫面上
        view.addSubview(codePickerView)
    }
    */
}

