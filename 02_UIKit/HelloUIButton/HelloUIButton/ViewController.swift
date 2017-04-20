//********************************************************************
//********************************************************************
//***************************** UIButton *****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("button pressed")
    }
    
    //用程式碼產生按鈕
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        //-- ***** 以程式碼產生文字按鈕 *****
        let newButton = UIButton(type: .system)        //產生按鈕
        newButton.frame = CGRect(x: 200, y: 200, width: 100, height: 50) //設定按鈕的位置
        newButton.setTitle("Press", for: .normal) //設定按鈕上的文字
        //newButton.setTitle("Pressing", for: .highlighted) //設定按鈕按下的文字
        //設定按下按鈕要執行 hitMe 方法
        newButton.addTarget(self, action: #selector(ViewController.hitMe(button:)), for: .touchUpInside)
        view.addSubview(newButton)                     //把按鈕加到畫面上
 
 
        //--- ***** 以程式碼產生圖片按鈕 *****
        let newButton = UIButton(type: .custom)        //產生按鈕
        newButton.frame = CGRect(x: 200, y: 200, width: 113, height: 53)   //設定按鈕的位置
        //設定還沒按下按鈕的圖片
        newButton.setImage(UIImage(named: "PlayButton"), for: .normal)
        //設定按下按鈕的圖片
        newButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted)
        //設定按下按鈕要執行 hitMe 方法
        newButton.addTarget(self, action: #selector(ViewController.hitMe(button:)), for: .touchUpInside)
        view.addSubview(newButton)//把按鈕加到畫面上
 
        */
    }
    
    func hitMe(button:UIButton){
        print("new button pressed")
    }
}

