//********************************************************************
//********************************************************************
//***************************** WebView ******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let address = "https://www.apple.com"   //先有網址
        let addressURL = URL(string: address)   //用網址產生URL
        if let url = addressURL{
            let request = URLRequest(url: url)  //用URL產生URLRequest
            myWebView.loadRequest(request)      //WebView去讀取Request
        }
        
        /*
        //直接讀入網頁文字loadHTMLString
        myWebView.loadHTMLString("<h1>Hello</h1><p>What's up?</p>",
                                 baseURL: nil)
        
        //讀入 HTML 檔案
        if let htmlFile = Bundle.main.path(forResource: "index", ofType: "html"){
            do{
                let html = try String(contentsOfFile: htmlFile, encoding: String.Encoding.utf8)
                myWebView.loadHTMLString(html, baseURL: nil)
            }catch{
                print("讀取發生錯誤")
            }
        }
        
        //讀取PDF檔
        let pdfPath = Bundle.main.path(forResource: "BookInfo", ofType: "pdf")
        let url = URL(fileURLWithPath: pdfPath!)
        myWebView.loadRequest(URLRequest(url: url))
        */
    }
}
