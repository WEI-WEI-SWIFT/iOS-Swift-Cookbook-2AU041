//********************************************************************
//********************************************************************
//************************** Magnetometer ****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        if motionManager.isMagnetometerAvailable{    //是否可取得磁力資料
            let operationQ = OperationQueue()
            motionManager.startMagnetometerUpdates(to: operationQ, withHandler: { (
                data:CMMagnetometerData?, error:Error?) in
                print("X:\(data!.magneticField.x)")
                print("Y:\(data!.magneticField.y)")
                print("Z:\(data!.magneticField.z)") //印出各方向的磁力
                
                //如果要在螢幕顯示磁力資料的話，請參考下面的程式碼
                if data != nil {
                    DispatchQueue.main.async(execute: {
                        self.xLabel.text = "\(lroundf(Float(data!.magneticField.x)))"
                        self.yLabel.text = "\(lroundf(Float(data!.magneticField.y)))"
                        self.zLabel.text = "\(lroundf(Float(data!.magneticField.z)))"
                    })
                }
            })
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        motionManager.stopMagnetometerUpdates()     //停止更新磁力資料
    }
}
