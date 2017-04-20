//********************************************************************
//********************************************************************
//************************** UIVisualEffect **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: .light)         //選擇模糊效果
        let blurView = UIVisualEffectView(effect: blurEffect)//建立模糊視圖
        blurView.frame = view.frame                       //設定模糊視圖大小
        blurView.center = view.center                     //設定模糊視圖位置
        view.addSubview(blurView)                       //把模糊視圖加入畫面
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

