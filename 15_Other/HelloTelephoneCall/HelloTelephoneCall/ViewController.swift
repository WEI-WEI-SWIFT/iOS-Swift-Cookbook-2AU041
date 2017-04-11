//********************************************************************
//********************************************************************
//************************** Telephhone Call *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "tel://12345678") //把數字代換成您的電話
        //以URL的方式打開包含電話的字串，就會撥打電話
        if url != nil{
            UIApplication.shared.openURL(url!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

