//********************************************************************
//********************************************************************
//********************** Frame by Frame Animation ********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIImageView!//播放動畫的ImageView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.animationImages = [
            UIImage(named: "1")!,
            UIImage(named: "2")!,
            UIImage(named: "3")!,
            UIImage(named: "4")!,
            UIImage(named: "5")!,
            UIImage(named: "6")!,
            UIImage(named: "7")!,
            UIImage(named: "8")!                //放入要做動畫的圖片
        ]
        animationView.animationDuration = 0.8   //設定動畫播放速度
        animationView.animationRepeatCount = 0  //設定動畫播放次數
        animationView.startAnimating()          //開始播放動畫
        
        //animationView.stopAnimating()         //停止播放動畫
    }
}

