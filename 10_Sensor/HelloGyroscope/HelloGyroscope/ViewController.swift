//********************************************************************
//********************************************************************
//***************************** Gyroscope ****************************
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
        if motionManager.isGyroAvailable{         //檢查陀螺儀是否可用
            let operationQ = OperationQueue()
            motionManager.startGyroUpdates(to: operationQ, withHandler: {
                (data:CMGyroData?, error:Error?) in
                print("X:\(data!.rotationRate.x)")
                print("Y:\(data!.rotationRate.y)")
                print("Z:\(data!.rotationRate.z)") //拿到陀螺儀資料
                
                //如果要在螢幕顯示陀螺儀資料的話，請參考下面的程式碼
                if data != nil {
                    DispatchQueue.main.async(execute: {
                        self.xLabel.text = "\(data!.rotationRate.x)"
                        self.yLabel.text = "\(data!.rotationRate.y)"
                        self.zLabel.text = "\(data!.rotationRate.z)"
                    })
                }
            })
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        motionManager.stopGyroUpdates()     //停止更新陀螺儀資料
    }
}

