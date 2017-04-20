//********************************************************************
//********************************************************************
//*************************** UITextField ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func textFieldEndEditing(_ sender: UITextField) {
        print(myTextField.text!) //用UITextField.text得到使用者輸入的文字
        myTextField.text = ""                      //清除文字輸入框的文字
    }
    
    override func viewDidLoad() {
        
        //一進入畫面跳出鍵盤
        //myTextField.becomeFirstResponder()
        
        //產生toolBar
        let myToolBar = UIToolbar(frame:
            CGRect(x: 0, y: 0, width: view.frame.width, height: 44))
        //產生barButtonItem按鈕
        let removeButton = UIBarButtonItem(title: "remove",
                style: .plain, target: self,
                        action: #selector(ViewController.removeKeyboard))
        //產生flexible space
        let someSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        //把彈性空間和按鈕加到 toolBar 中
        myToolBar.setItems([someSpace,removeButton], animated: false)
        //設定toolBar為文字輸入框的 inputAccessoryView
        self.myTextField.inputAccessoryView = myToolBar
        
        /**************用程式碼的方式產生文字輸入框 ********************
        //產生文字輸入框
        let codeTextField = UITextField(frame: CGRect(x: 40, y: 80, width: 300, height: 30))
        //設定外框樣式
        codeTextField.borderStyle = .roundedRect
        //設定對齊(可省略)
        codeTextField.textAlignment = .left
        //設定鍵盤為預設鍵盤
        codeTextField.keyboardType = .default
        //設定return鍵為send (如果要改回預設，請改成.default)
        codeTextField.returnKeyType = .send
        //設定Placeholder
        codeTextField.placeholder = "programmatically generated"
        //設定輸入完會呼叫的方法
        codeTextField.addTarget(self, action: #selector(ViewController.codeTextFieldEndEditing(_:)), for: .editingDidEndOnExit)
        //把文字輸入框加到畫面上
        view.addSubview(codeTextField)
        */
        
    }
    
    //codeTextFieldEndEditing 此方法是上方被註釋起來、用程式碼的方式產生文字輸入框在輸入完成後會呼叫的方法
    func codeTextFieldEndEditing(_ textField:UITextField){
        print(textField.text!)
        textField.text = ""
    }
    
    func removeKeyboard(){
        myTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextField.resignFirstResponder()          //碰到畫面任何一個地方收起鍵盤
    }
}

