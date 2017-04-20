//********************************************************************
//********************************************************************
//***************** Check Device Width And Height ********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(view.frame.size.width)    //得到畫面的寬度
        print(view.frame.size.height)   //得到畫面的高度
    }
}

