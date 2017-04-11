//********************************************************************
//********************************************************************
//*********************** Check File Existence ***********************
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
         **************************************************************/
        
        let fileManager = FileManager()
        let directoryPath = NSTemporaryDirectory() + "/images"
        var isDir:ObjCBool = false
        
        let isExist = fileManager.fileExists(atPath: directoryPath,
                                            isDirectory: &isDir)
        if isExist == true && isDir.boolValue == true{
            print("該檔案存在，是資料夾")
        }else if isExist == true && isDir.boolValue == false{
            print("該檔案存在，是檔案")
        }else if isExist == false{
            print("該檔案不存在")
        }
    }
}

