//********************************************************************
//********************************************************************
//************************** Phone Vibration *************************
//********************************************************************
//********************************************************************

import UIKit
import AudioToolbox  //記得加入 AudioToolbox 函式庫

class ViewController: UIViewController {

    @IBAction func makeItShake(_ sender: UIButton) {
        //播放震動音效
        AudioServicesPlayAlertSound(
                                SystemSoundID(kSystemSoundID_Vibrate))
    }

}

