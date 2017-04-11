//********************************************************************
//********************************************************************
//************************* Save Dictionary **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let originalDict =
           ["red":"apple","yellow":"banana","green":"mango"]//原始字典
        let dictToSave = NSDictionary(dictionary: originalDict)//轉換
        let filePath = NSTemporaryDirectory() + "Test.txt" //存檔路徑
        
        //********** 寫入檔案 **********
        dictToSave.write(toFile: filePath, atomically: true)
        
        //********** 讀出檔案 **********
        if let loadedDict:[String:String] =
        NSDictionary(contentsOfFile: filePath) as? [String:String]{
                print(loadedDict)
        }
    }
}

