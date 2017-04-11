//********************************************************************
//********************************************************************
//*********************** Orientation Change *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orientationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,selector: #selector(ViewController.orientationChanged(notification:)),name: NSNotification.Name.UIDeviceOrientationDidChange,object: nil)//設定手機轉向會執行orientationChange
    }

    func orientationChanged(notification:Notification){
        //發生轉向後。用下面的程式碼得到目前手機的轉向
        let orientation = UIDevice.current.orientation
        var orientationResult:String
        switch orientation{        //判斷是哪一種轉向，一共有六種
            case .portrait:
                orientationResult = "Portait"
            case .portraitUpsideDown:
                orientationResult = "PortaitUpsideDown"
            case .landscapeLeft:
                orientationResult = "LandscapeLeft"
            case .landscapeRight:
                orientationResult = "LandscapeRight"
            case .faceUp:
                orientationResult = "FaceUp"
            case .faceDown:
                orientationResult = "FaceDown"
            default:
                orientationResult = "Unknown Direction"
        }
        print("orientation changed: " + orientationResult)
        orientationLabel.text = orientationResult
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return .all
    }
}

