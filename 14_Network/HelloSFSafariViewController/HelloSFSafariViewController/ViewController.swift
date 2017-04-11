//********************************************************************
//********************************************************************
//********************** SFSafariViewController **********************
//********************************************************************
//********************************************************************

import UIKit
import SafariServices   // <--- 加入這個

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: UIButton) {
        //網址 > URL > SFSafariController
        let webAddress = "http://www.apple.com"  //網址
        let webURL = URL(string:webAddress)      //用網址產生URL
        if let url = webURL{
            //如果成功產生URL，就用URL產生SFSafariViewController
            let safariViewController = SFSafariViewController(url: url)
            //推出SFSafariViewController
            present(safariViewController, animated: true, completion: nil)
        }
    }
}

