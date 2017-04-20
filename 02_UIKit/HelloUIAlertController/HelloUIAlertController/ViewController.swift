//********************************************************************
//********************************************************************
//************************* Alert Controller *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: UIButton) {
        //產生AlertController
        let myAlert = UIAlertController(title: "Hello",
                        message: "How are you", preferredStyle: .alert)
        //產生第一顆按鈕
        let okAction = UIAlertAction(title: "Fine",
                                            style: .default, handler: {
            (action:UIAlertAction) -> () in
            print("fine")
            self.dismiss(animated: true, completion: nil)
        })
        //產生第二顆按鈕
        let cancelAction = UIAlertAction(title: "So So",
                                            style: .default, handler: {
            (action:UIAlertAction) -> () in
            print("so so")
            self.dismiss(animated: true, completion: nil)
        })
        //把第一顆按鈕加到警告控制器
        myAlert.addAction(okAction)
        //把第二顆按鈕加到警告控制器
        myAlert.addAction(cancelAction)
        //推出警告控制器
        self.present(myAlert, animated: true, completion: nil)
 
        /********************* 有文字輸入框的警告控制器 ***********************
        //產生AlertController
        let myAlert = UIAlertController(title: "Hello", message: "Enter your name", preferredStyle: .alert)
        //產生第一顆按鈕
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {
            (action:UIAlertAction) -> () in
            let alertTextField = myAlert.textFields![0] as UITextField
            print(alertTextField.text!)
            self.dismiss(animated: true, completion: nil)
        })
        //產生第二顆按鈕
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: {
            (action:UIAlertAction) -> () in
            self.dismiss(animated: true, completion: nil)
        })
        
        //加入文字輸入框
        myAlert.addTextField(configurationHandler: {
            (textField:UITextField!) -> Void in
            textField.placeholder = "Enter your name here!"
        })
        
        //把第一顆按鈕加到警告控制器
        myAlert.addAction(saveAction)
        //把第二顆按鈕加到警告控制器
        myAlert.addAction(cancelAction)
        //推出警告控制器
        self.present(myAlert, animated: true, completion: nil)
        */
    }
}

