//********************************************************************
//********************************************************************
//*************************** Create Folder **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileManager = FileManager()
        let directoryPath = NSTemporaryDirectory() + "/images"
        
        do{
            try fileManager.createDirectory(atPath: directoryPath, withIntermediateDirectories: true, attributes: nil)
        }catch{
            print("Create Folder Fail")
        }
        
        /***** URL的作法 *****
        
        let directoryURL = URL(fileURLWithPath: directoryPath, isDirectory: true)
        do{
            try fileManager.createDirectory(at: directoryURL, withIntermediateDirectories: true, attributes: nil)
        }catch{
            print("Create Folder Fail")
        }
        */
    }
}

