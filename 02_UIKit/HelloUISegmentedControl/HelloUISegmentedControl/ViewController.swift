//********************************************************************
//********************************************************************
//************************ UISegmentedControl ************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func myToggleAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            print("public")         //選到 index 是 0 的情況
        }else{
            print("private")        //選到 index 是 1 的情況
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /***************** 用程式碼產生Segmented Control *********************
        //產生Segmented Control
        let codeToggle = UISegmentedControl(frame: CGRect(x: 101, y: 150, width: 115, height: 29))
        //加入第一個選項
        codeToggle.insertSegment(withTitle: "One", at: 0, animated: false)
        //加入第二個選項
        codeToggle.insertSegment(withTitle: "Two", at: 1, animated: false)
        //設定預設選項為 0
        codeToggle.selectedSegmentIndex = 0
        //設定互動時會觸發的程式碼
        codeToggle.addTarget(self, action: #selector(ViewController.codeToggleAction(sender:)), for: .valueChanged)
        //將Segmented Control加到畫面中
        view.addSubview(codeToggle)
        */
    }

    func codeToggleAction(sender:UISegmentedControl){
        //此方法是撰寫給上面註釋起來的Segemented Control呼叫的
        if sender.selectedSegmentIndex == 0{
            print("one")
        }else{
            print("two")
        }
    }
}

