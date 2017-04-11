//********************************************************************
//********************************************************************
//********************* Swipe Gesture Recognizer *********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBAction func swipeAction(_ sender: UISwipeGestureRecognizer) {
        print("just swipe right")
    }
    
    /***** 用程式碼生成UISwipeGestureRecognizer的方法 *****
    //加入屬性
    var mySwipeGestureRecognizer:UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測滑動手勢的UISwipeGestureRecognizer，設定觸發 programSwipe方法。
        mySwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.programSwipe(sender:)))
        //設定需要幾根手指觸發滑動事件
        mySwipeGestureRecognizer.numberOfTouchesRequired = 1
        //設定要偵測滑動方向
        mySwipeGestureRecognizer.direction = .left
        //把偵測滑動手勢的UISwipeGestureRecognizer加到畫面上。
        //事實上可以加到任何的UIView中
        view.addGestureRecognizer(mySwipeGestureRecognizer)
    }
    
    func programSwipe(sender: UISwipeGestureRecognizer) {
        //如果觸發滑動事件執行的程式碼
        if sender.direction == .up{
            print("Swipe Up")
        }else if sender.direction == .down{
            print("Swipe Down")
        }else if sender.direction == .left{
            print("Swipe Left")
        }else if sender.direction == .right{
            print("Swipe Right")
        }
    }
    */
}


