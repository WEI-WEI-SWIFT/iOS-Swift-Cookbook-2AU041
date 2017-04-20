//********************************************************************
//********************************************************************
//*************************** UIPageControl **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPageControl: UIPageControl!
    
    @IBAction func myPageControlAction(_ sender: UIPageControl) {
        print(sender.currentPage)           //目前選到的頁數
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPageControl.currentPage = 1       //設定目前的頁數
        
        /*************** 用程式碼建立 Page Control *****************
        //用程式碼建立 PageControl
        let codePageControl = UIPageControl(frame: CGRect(x: 143, y: 80, width: 128, height: 37))
        //設定顏色
        codePageControl.pageIndicatorTintColor = UIColor.black
        //設定目前頁面的顏色
        codePageControl.currentPageIndicatorTintColor = UIColor.lightGray
        //設定總頁數
        codePageControl.numberOfPages = 5
        //設定目前的頁數
        codePageControl.currentPage = 0
        //設定改動頁數後要執行的方法
        codePageControl.addTarget(self, action: #selector(ViewController.codePageControlAction(sender:)), for: .valueChanged)
        //把PageControl加到畫面上
        view.addSubview(codePageControl)
        */
    }
    
    func codePageControlAction(sender:UIPageControl){
        //此方法供上面註釋起來的UIPageControl呼叫
        print(sender.currentPage)
    }
}

