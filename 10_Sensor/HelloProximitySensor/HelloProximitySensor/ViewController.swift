//********************************************************************
//********************************************************************
//************************ Proximity Sensor **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //先把距離感應器的偵測狀態設為開啟
        UIDevice.current.isProximityMonitoringEnabled = true
        if UIDevice.current.isProximityMonitoringEnabled == true{
            //如果距離感應器的狀態真的是開啟，代表運行的機器上有安裝距離感應器...
            NotificationCenter.default.addObserver(self,
                    selector: #selector(ViewController.proximitySensorStateChange(notification:)),
                    name: NSNotification.Name.UIDeviceProximityStateDidChange,
                    object: nil)
        }
    }
    
    func proximitySensorStateChange(notification:Notification){
        print("something approching or leaving")
    }
}

