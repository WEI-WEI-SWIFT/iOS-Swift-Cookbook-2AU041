//********************************************************************
//********************************************************************
//************************** Dispatch After **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {               
        super.viewDidLoad()
        let delayTime = DispatchTime.now() + .seconds(2)
        DispatchQueue.global().asyncAfter(deadline: delayTime, execute: {
            //在此加入延遲之後要做的事情
            print("已延遲兩秒")
        })
    }
}

