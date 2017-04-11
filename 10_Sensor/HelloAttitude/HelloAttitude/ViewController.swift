//********************************************************************
//********************************************************************
//****************************** Attitude ****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion

class ViewController: UIViewController {
    let motionManager = CMMotionManager()
    
    @IBOutlet weak var pitchLabel: UILabel!
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var yawLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if motionManager.isDeviceMotionAvailable{//是否可取得DeviceMotion
            let operationQ = OperationQueue()
            motionManager.startDeviceMotionUpdates(to: operationQ, withHandler: {
                (motion:CMDeviceMotion?, error:Error?) in
                print("Pitch:\(motion!.attitude.pitch)")
                print("Roll:\(motion!.attitude.roll)")
                print("Yaw:\(motion!.attitude.yaw)") //拿到各個方向的轉向
                
                let pitch = motion!.attitude.pitch
                let roll = motion!.attitude.roll
                let yaw = motion!.attitude.yaw
                
                DispatchQueue.main.async(execute: {
                    self.pitchLabel.text = "Pitch:\(Int(pitch*180/Double(M_PI)))"
                    self.rollLabel.text = "Roll:\(Int(roll*180/Double(M_PI)))"
                    self.yawLabel.text = "Yaw:\(Int(yaw*180/Double(M_PI)))"
                })
            })
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        motionManager.stopDeviceMotionUpdates() //停止更新DeviceMotion
    }
}

