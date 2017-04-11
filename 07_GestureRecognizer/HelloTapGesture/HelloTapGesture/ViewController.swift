//********************************************************************
//********************************************************************
//********************** Tap Gesture Recognizer **********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        let touchPoint = sender.location(ofTouch: 0, in: sender.view)
        print("just tap on the screen: \(touchPoint)")
    }
    
    /***** 用程式碼生成UITapGestureRecognizer的方法 *****
    //加入屬性
    var myTapGestureRecognizer:UITapGestureRecognizer!
    
    override func viewDidLoad() {
    //用程式碼生成偵測點擊事件的UITapGestureRecognizer，設定觸發 programTap方法。
    myTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.programTap(sender:)))
    //設定需要幾根手指觸發點擊事件
    myTapGestureRecognizer.numberOfTouchesRequired = 1
    //設定需要點擊事件要點幾次
    myTapGestureRecognizer.numberOfTapsRequired = 2
    //把偵測點擊事件的UITapGestureRecognizer加到畫面上。
    //事實上可以加到任何的UIView中
    view.addGestureRecognizer(myTapGestureRecognizer)
    }
    
    func programTap(sender: UITapGestureRecognizer) {
    //如果點擊事件執行的程式碼
        let touchPoint = sender.location(ofTouch: 0, in: sender.view)
        print("program tap on the screen: \(touchPoint)")
    }
    */
}

