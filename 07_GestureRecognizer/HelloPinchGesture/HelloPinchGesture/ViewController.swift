//********************************************************************
//********************************************************************
//********************* Pinch Gesture Recognizer *********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    @IBAction func pinchAction(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .began{
            //開始偵測縮放手勢
            print("pinch action start")
        }else if sender.state == .changed{
            //縮放手勢進行中
            print("pinch action changed")
            let scale = sender.scale
            print("\(scale)")  //印出目前縮放大小
            redSquare.transform = CGAffineTransform(scaleX: scale, y:scale)
        }else if sender.state == .ended{
            //結束偵測縮放手勢
            print("pinch action ended")
        }
    }
    
    /***** 用程式碼生成UIPinchGestureRecognizer的方法 *****
    //加入屬性
    var myPinchGestureRecognizer:UIPinchGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測縮放手勢的UIPinchGestureRecognizer，設定觸發 programPinch方法。
        myPinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.programPinch(sender:)))
        //把偵測縮放手勢的UIPinchGestureRecognizer加到畫面上。
        //事實上可以加到任何的UIView中
        view.addGestureRecognizer(myPinchGestureRecognizer)
    }
    
    func programPinch(sender: UIPinchGestureRecognizer) {
        //如果觸發縮放事件執行的程式碼
        if sender.state == .began{
            //開始偵測縮放手勢
            print("pinch action start")
        }else if sender.state == .changed{
            //縮放手勢進行中
            print("pinch action changed")
            let scale = sender.scale
            print("\(scale)")  //印出目前縮放大小
            redSquare.transform = CGAffineTransform(scaleX: scale, y: scale)
        }else if sender.state == .ended{
            //結束偵測縮放手勢
            print("pinch action ended")
        }
    }
    */
}

