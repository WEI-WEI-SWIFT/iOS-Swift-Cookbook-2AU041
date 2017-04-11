//********************************************************************
//********************************************************************
//******************** Screen Edge Pan Recognizer ********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func edgePanAction(_ sender:UIScreenEdgePanGestureRecognizer){
        if sender.state == .ended{
            print("edge pan now")
        }
    }
    
    /***** 用程式碼生成UIScreenEdgePanGestureRecognizer的方法 *****
    //加入屬性
    var myScreenEdgePanGestureRecognizer:UIScreenEdgePanGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測從螢幕邊界滑動手勢的UIScreenEdgePanGestureRecognizer，設定觸發 programScreenEdgePan方法。
        myScreenEdgePanGestureRecognizer = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(ViewController.programScreenEdgePan(sender:)))
        //設定最少需要幾根手指觸發從螢幕邊界滑動手勢事件
        myScreenEdgePanGestureRecognizer.minimumNumberOfTouches = 1
        //設定最多需要幾根手指觸發從螢幕邊界滑動手勢事件
        myScreenEdgePanGestureRecognizer.maximumNumberOfTouches = 1
        //設定偵測從哪個方向觸發螢幕邊界滑動手勢事件
        myScreenEdgePanGestureRecognizer.edges = .left
        //把偵測滑動手勢的UIScreenEdgePanGestureRecognizer加到畫面上。
        view.addGestureRecognizer(myScreenEdgePanGestureRecognizer)
    }
    
    func programScreenEdgePan(sender: UIScreenEdgePanGestureRecognizer) {
        //如果觸發螢幕邊界滑動手勢事件執行的程式碼
        if sender.state == .ended{
            print("edge pan now")
        }
    }
 
    //避免不小心叫出通知中心、控制中心，或是另外一個App，可以加上下面的程式碼
    override var prefersStatusBarHidden: Bool{
        return true
    }
    */
}

