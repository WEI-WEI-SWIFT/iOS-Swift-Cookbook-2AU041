//********************************************************************
//********************************************************************
//************************** Motion Shake ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
                                                
        if event?.subtype == .motionShake{ //如果偵測到的事件是搖晃手機的話
            print("Shaking now")
            
            //如果要在搖晃手機後，跳出警告視窗的話，請參考下面的程式碼
            let shakeAlert = UIAlertController(title: "Shake", message: "Device shaking ended", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: {
                (action:UIAlertAction) -> Void in
                self.dismiss(animated: true, completion: nil)
            })
            shakeAlert.addAction(okAction)
            present(shakeAlert, animated: true, completion: nil)
        }
    }
    /*
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake{ //如果偵測到的事件是搖晃手機的話
            print("Shaking now")
        }
    }
     */
}

