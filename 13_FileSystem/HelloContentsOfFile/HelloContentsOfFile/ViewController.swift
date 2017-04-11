//********************************************************************
//********************************************************************
//*********************** Contents of File ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*********** 註釋起來的程式碼，是先建立一些檔案********************
        let fileManager = FileManager()
        let directoryPath = NSTemporaryDirectory() + "/images"
        do{
        try fileManager.createDirectory(atPath: directoryPath, withIntermediateDirectories: true, attributes: nil)
        }catch{
        print("Create Folder Fail")
        }
        
        let text = "Hello World"
        let filePath = NSTemporaryDirectory() + "Test.txt"
        do{
            try text.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
        }catch{
            print("not save correctly")
        }
        
        let originalArray = ["Apple","Banana","Mango"]
        let arrayToSave = NSArray(array:originalArray)
        let arrayFilePath = NSTemporaryDirectory() + "Array.data"
        arrayToSave.write(toFile: arrayFilePath, atomically: true)
        **************************************************************/
        
        let fileManager = FileManager()
        
        do{
            let fileList = try fileManager.contentsOfDirectory(atPath: NSTemporaryDirectory())
            for file in fileList{
                print(file)
            }
        }catch{
            print("讀取時發生錯誤")
        }
    }
}

