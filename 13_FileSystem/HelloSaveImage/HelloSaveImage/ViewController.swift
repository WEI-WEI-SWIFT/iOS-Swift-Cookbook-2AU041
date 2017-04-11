//********************************************************************
//********************************************************************
//**************************** Save Image ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let filePath = NSTemporaryDirectory() + "CatPic.data"//存檔路徑
        if let imageToSave = UIImage(named: "MyCat.jpg"){
            if let dataToSave =
                        UIImageJPEGRepresentation(imageToSave, 1.0){
                //********** 寫入檔案 **********
                do{
                    try dataToSave.write(to: URL(fileURLWithPath: filePath), options: [.atomic])
                }catch{
                    print("無法順利儲存")
                }
            }
        }
        //********** 讀出檔案 **********
        if let catImage = UIImage(contentsOfFile: filePath){
            myImageView.image = catImage
        }
    }
}

