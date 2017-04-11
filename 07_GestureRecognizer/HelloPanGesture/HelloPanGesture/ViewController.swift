//********************************************************************
//********************************************************************
//********************** Pan Gesture Recognizer **********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        if sender.state != .ended{
            let location = sender.location(in: sender.view!)
            redSquare.center = location
        }
    }
    
    /***** 用程式碼生成UIPanGestureRecognizer的方法 *****
    //加入屬性
    var myPanGestureRecognizer:UIPanGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測拖曳手勢的UIPanGestureRecognizer，設定觸發 programPan方法。
        myPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(ViewController.programPan(sender:)))
        //設定最少需要幾根手指才能觸發拖曳事件
        myPanGestureRecognizer.minimumNumberOfTouches = 1
        //設定最多需要幾根手指才能觸發拖曳事件
        myPanGestureRecognizer.maximumNumberOfTouches = 1
        //把偵測拖曳手勢的UISwipeGestureRecognizer直接加到紅色四方形上。
        redSquare.addGestureRecognizer(myPanGestureRecognizer)
    }
    
    func programPan(sender: UIPanGestureRecognizer) {
        //如果觸發拖曳事件執行的程式碼
        if sender.state != .ended{
            //因為程式碼直接加到redSquare上，所以偵測location時要加上superview
            let location = sender.location(in: sender.view!.superview!)
            redSquare.center = location
        }
    }
    */
}

