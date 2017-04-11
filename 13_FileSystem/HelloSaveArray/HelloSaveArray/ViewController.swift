//********************************************************************
//********************************************************************
//**************************** Save Array ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let originalArray = ["Apple","Banana","Mango"]    //原始的陣列
        let arrayToSave = NSArray(array:originalArray)//轉換成 NSArray
        let filePath = NSTemporaryDirectory() + "Test.txt" //存檔路徑
        
        //********** 寫入檔案 **********
        arrayToSave.write(toFile: filePath, atomically: true)
        
        //********** 讀出檔案 **********
        if let loadedArray:[String] =
                    NSArray(contentsOfFile: filePath) as? [String]{
            print(loadedArray)
        }
    }
}

