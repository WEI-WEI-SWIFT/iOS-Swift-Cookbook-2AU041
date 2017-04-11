//********************************************************************
//********************************************************************
//**************************** Save String ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let text = "Hello World"        //要存的文字
        let filePath = NSTemporaryDirectory() + "Test.txt" //存檔路徑
        
        //********** 寫入檔案 **********
        do{
            try text.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
        }catch{
            print("not save correctly")
        }
        
        //********** 讀出檔案 **********
        do{
            let loadedString = try NSString(contentsOfFile: filePath, encoding: String.Encoding.utf8.rawValue) as String
            print(loadedString)
        }catch{
            print("not load correctly")
        }
    }


}

