//********************************************************************
//********************************************************************
//************************** Gradient Color **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //兩個漸層顏色(請改成您自己的顏色)
        let color1 = UIColor(red: 1, green: 0, blue: 0.68, alpha: 1)
        let color2 = UIColor(red: 1, green: 0, blue: 0.11, alpha: 1)
        //漸層的CALayer
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor, color2.cgColor]
        //把漸層Layer加入畫面中
        self.view.layer.insertSublayer(gradient, at: 0)
    }
}

