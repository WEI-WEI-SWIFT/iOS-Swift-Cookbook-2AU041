//********************************************************************
//********************************************************************
//****************** Long Press Gesture Recognizer *******************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer){
        if sender.state == .began{
            print("long press")
        }
    }
    
    /***** 用程式碼生成UILongPressGestureRecognizer的方法 *****
    //加入屬性
    var myLongPressGestureRecognizer:UILongPressGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測長按手勢的UILongPressGestureRecognizer，設定觸發 programLongPress方法。
        myLongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.programLongPress(sender:)))
        //設定需要幾根手指觸發長按事件
        myLongPressGestureRecognizer.numberOfTouchesRequired = 1
        //設定需要長按多久才算長按事件
        myLongPressGestureRecognizer.minimumPressDuration = 2
        //設定手指移動超過多長就不算長按事件
        myLongPressGestureRecognizer.allowableMovement = 10
        //把偵測長按手勢的UILongPressGestureRecognizer加到畫面上。
        //事實上可以加到任何的UIView中
        view.addGestureRecognizer(myLongPressGestureRecognizer)
    }
    
    func programLongPress(sender: UILongPressGestureRecognizer) {
        //如果觸發長按事件執行的程式碼
        if sender.state == .began{
            print("program:long press")
        }
    }
    */
}

