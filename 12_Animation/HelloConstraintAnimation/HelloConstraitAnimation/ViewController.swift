//********************************************************************
//********************************************************************
//***************** Autolayout Constraits  Animation *****************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthOfRedSquare: NSLayoutConstraint!
    @IBOutlet weak var topDistance: NSLayoutConstraint!
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, animations:{
            //動畫設定
            self.widthOfRedSquare.constant = 200
            self.topDistance.constant = 400
            self.view.layoutIfNeeded()       //記得要加這行程式碼
        })
    }

}

