//********************************************************************
//********************************************************************
//*************************** Accelerometer **************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion                                   //匯入CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    let motionManager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        if motionManager.isAccelerometerAvailable{      //檢查是否可以用
            let operationQ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: operationQ, withHandler: {
                (data:CMAccelerometerData?, error:Error?) in
                print("X: \(data!.acceleration.x)")
                print("Y: \(data!.acceleration.y)")
                print("Z: \(data!.acceleration.z)")    //拿到加速度器資料
                
                //如果要在螢幕顯示加速度資料的話，請參考下面的程式碼
                if data != nil {
                    DispatchQueue.main.async(execute: {
                        self.xLabel.text = "\(data!.acceleration.x)"
                        self.yLabel.text = "\(data!.acceleration.y)"
                        self.zLabel.text = "\(data!.acceleration.z)"
                    })
                }
            })
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        motionManager.stopAccelerometerUpdates()  //停止更新加速度器資料
    }
}

