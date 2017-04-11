//********************************************************************
//********************************************************************
//******************* Rotation Gesture Recognizer ********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    
    @IBAction func rotateAction(_ sender: UIRotationGestureRecognizer) {
        let radian = sender.rotation            //旋轉的徑度
        let degree = radian / .pi //把徑度轉為角度的方法
        print("\(degree)")                      //印出角度
        redSquare.transform = CGAffineTransform(rotationAngle: radian)
    }
    
    /***** 用程式碼生成UIRotationGestureRecognizer的方法 *****
    //加入屬性
    var myRotationGestureRecognizer:UIRotationGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測旋轉手勢的UIRotationGestureRecognizer，設定觸發 programRotation方法。
        myRotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(ViewController.programRotation(sender:)))
        //把偵測旋轉手勢的UIRotationGestureRecognizer加到畫面上。
        //事實上可以加到任何的UIView中
        view.addGestureRecognizer(myRotationGestureRecognizer)
    }
    
    func programRotation(sender: UIRotationGestureRecognizer) {
        //如果觸發旋轉手勢事件執行的程式碼
        let radian = sender.rotation
        let degree = radian / .pi
        print("\(degree)")
        redSquare.transform = CGAffineTransform(rotationAngle: radian)
    }
    */
}

