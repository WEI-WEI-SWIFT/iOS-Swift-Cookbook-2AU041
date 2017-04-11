//********************************************************************
//********************************************************************
//************************ UIView Animation **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UFO: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 0,
                       options: [.repeat, .autoreverse, .curveEaseIn], //結合三種選項
            animations: {
                //把要做的動畫放在這個 Closure 裡面
                self.UFO.frame.origin.x = self.UFO.frame.origin.x + 100
                let rotationAngle = CGFloat(30.0 * .pi / 180.0)
                self.UFO.transform = CGAffineTransform(
                                                rotationAngle: rotationAngle)
            }, completion:{
                finish -> () in
                print("animation ended")
            }
        )
        
        /******************  彈跳動畫 ************************
        UIView.animate(withDuration: 1.0, delay: 0,
                    usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5,
                            options: [.repeat, .autoreverse], animations: {
            //同時設定x跟y座標
            let xFinal = self.UFO.frame.origin.x + 100
            let yFinal = self.UFO.frame.origin.y + 100
            let finalPoint = CGPoint(x: xFinal, y: yFinal)
            self.UFO.frame.origin = finalPoint
            
            //同時放大又旋轉
            let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
            let rotationAngle = CGFloat(30.0 * .pi / 180.0)
            let rotation = CGAffineTransform(rotationAngle: rotationAngle)
            self.UFO.transform = scale.concatenating(rotation)
        }, completion: nil)
         */
    }
}

