//********************************************************************
//********************************************************************
//**************************** WKWebView *****************************
//********************************************************************
//********************************************************************

import UIKit
import WebKit // <--- 加入這個

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //設定稍後產生 WKWebView 的大小填滿整個畫面
        let wkWebViewFrame = CGRect(x: 0, y: 0,
                  width: view.frame.width, height: view.frame.height)
        //產生 WKWebView
        let myWebView = WKWebView(frame: wkWebViewFrame)
        
        //網址 > URL > URLRequest > Web 去讀取 request
        let webAddress = "https://www.apple.com"
        let webURL = URL(string: webAddress)
        if let url = webURL{
            let request = URLRequest(url: url)
            myWebView.load(request)
        }
        
        //把 WKWebView 加到畫面上
        view.addSubview(myWebView)
    }
}

