//********************************************************************
//********************************************************************
//************************** Core Animation **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UFO: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        
        let animation = CABasicAnimation(keyPath: "opacity")//建立動畫
        animation.fromValue = 1.0   //設定動畫初始值
        animation.toValue = 0.0     //設定動畫結束值
        animation.duration = 1.0    //設定動畫時間
        
        self.UFO.layer.add(animation, forKey: nil) //加入動畫
        self.UFO.layer.opacity = 0.0//<--這句很重要，要設定動畫結束時的屬性
        
        /*
        let animation = CABasicAnimation(keyPath: "bounds.size")//建立動畫
        animation.fromValue = NSValue(cgSize:self.UFO.frame.size)  //設定動畫初始值
        animation.toValue = NSValue(cgSize:CGSize(width: 200, height: 200))     //設定動畫結束值
        animation.duration = 1.0    //設定動畫時間
        
        self.UFO.layer.add(animation, forKey: nil) //加入動畫
        self.UFO.layer.bounds.size = CGSize(width: 200, height: 200)
        */
    }
}

