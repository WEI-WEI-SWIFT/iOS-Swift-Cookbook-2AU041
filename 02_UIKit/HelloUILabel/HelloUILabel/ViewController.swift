//********************************************************************
//********************************************************************
//***************************** UILabel ******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "Hello! Swift!"                  //更改文字內容
        myLabel.textColor = UIColor.red                 //更改文字顏色
        myLabel.textAlignment = .center                 //對齊方式
        myLabel.backgroundColor = UIColor.yellow        //底色
        myLabel.font = UIFont(name: "Arial", size: 24)  //字型
        
        //用程式碼生成UILabel
        let anotherLabel = UILabel(frame: CGRect(x: 200, y: 200, width: 200, height: 50))
        anotherLabel.font = UIFont(name: "Arial", size: 24)
        anotherLabel.textColor = UIColor.magenta
        anotherLabel.text = "Swift Rocks!"
        view.addSubview(anotherLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

