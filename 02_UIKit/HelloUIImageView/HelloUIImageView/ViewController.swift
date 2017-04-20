//********************************************************************
//********************************************************************
//**************************** UIImageView ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let foxImage = UIImage(named: "Fox")    //讀入狐狸圖片
        myImageView.image = foxImage            //設定顯示狐狸圖片的UIImage
        
        /************************* 加入外框 *************************
        //設定CALayer的邊線顏色
        myImageView.layer.borderColor = UIColor.black.cgColor
        //設定邊線粗細
        myImageView.layer.borderWidth = 2.0
        */
        
        /************************* 用程式碼產生圖片 *************************
        //先產生 UIImage
        let codeImage = UIImage(named: "Dog")
        //產生 UIImageView
        let codeImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        //設定 ImageView要顯示的圖片
        codeImageView.image = codeImage
        //設定 ImageView 的顯示模式
        codeImageView.contentMode = .scaleAspectFit
        //把 ImageView 加到畫面上
        view.addSubview(codeImageView)
        */
    }
}

