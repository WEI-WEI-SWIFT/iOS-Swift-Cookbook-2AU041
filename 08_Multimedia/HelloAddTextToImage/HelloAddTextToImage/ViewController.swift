//********************************************************************
//********************************************************************
//***************** Add Text or Image on the Photo *******************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField! //用來輸入文字
    @IBOutlet weak var container: UIView! //用來渲染加入貼文的UIView
    @IBOutlet weak var addThisText: UILabel! //用來顯示使用者輸入的文字
    @IBOutlet weak var originalImage: UIImageView! //顯示原始未加字的圖片
    @IBAction func addNewText(_ sender: UITextField) {
        //1.使用者一輸入文字，就在照片上的UILabel顯示輸入的結果
        addThisText.text = myTextField.text
    }
    
    @IBAction func saveImage(_ sender: UIButton) {
        //2.設定最後完成照片的大小
        UIGraphicsBeginImageContextWithOptions(container.bounds.size,
                                                            true, 0.0)
        //3.把所有的圖層合為一
        container.drawHierarchy(in: container.bounds,
            afterScreenUpdates: true)
        //4.輸出加入文字的照片，存在addTextImage常數裡
        let addTextImage : UIImage =
        UIGraphicsGetImageFromCurrentImageContext()!
        //5.工作完畢，呼叫UIGraphicsEndImageContext
        UIGraphicsEndImageContext()
        //6.把加入文字的照片存入相簿中
        UIImageWriteToSavedPhotosAlbum(addTextImage, nil, nil, nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

