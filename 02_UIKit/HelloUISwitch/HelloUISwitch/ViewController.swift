//********************************************************************
//********************************************************************
//***************************** UISwitch *****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func mySwitchAction(_ sender: UISwitch) {
        if sender.isOn == true{
            print("Switch is now on")   //目前開關是開啟
        }else{
            print("Switch is now off")  //目前開關是關閉
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /********* 用程式碼產生開關 ***********
        //產生UISwitch
        let codeSwitch = UISwitch(frame: CGRect(x: 75, y: 161, width: 51, height: 31))
        //設定開關預設狀態
        codeSwitch.isOn = true
        //設定觸發開關要執行的函式
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchAction(sender:)), for: .valueChanged)
        //把開關加到畫面上
        view.addSubview(codeSwitch)
        */
    }
    
    func codeSwitchAction(sender: UISwitch) {
        //這個函式是為上面註釋起來的開關撰寫的
        if sender.isOn == true{
            print("Code Switch is now on")   //目前開關是開啟
        }else{
            print("Code Switch is now off")  //目前開關是關閉
        }
    }
}

