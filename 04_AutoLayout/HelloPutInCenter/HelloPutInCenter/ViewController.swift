//********************************************************************
//********************************************************************
//************************* Put it in Center  ************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        /************** 用程式碼設定設定置中 ****************
        //產生一個紅色的UIView
        let redView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //調整背景為紅色
        redView.backgroundColor = UIColor.red
        //加到畫面
        view.addSubview(redView)
        //置中的第一個方法
        redView.center = view.center
        //置中的第二個方法
        redView.translatesAutoresizingMaskIntoConstraints = false
        //x方向置中
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: view , attribute: .centerX, multiplier: 1.0, constant: 0))
        //y方向置中
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .centerY, relatedBy: .equal, toItem: view , attribute: .centerY, multiplier: 1.0, constant: 0))
        //固定寬度
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil , attribute: .notAnAttribute, multiplier: 1, constant: 100))
        //固定高度
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil , attribute: .notAnAttribute, multiplier: 1, constant: 100))
        */
    }
}

