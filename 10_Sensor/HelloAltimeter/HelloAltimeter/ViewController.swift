//********************************************************************
//********************************************************************
//**************************** Altimeter *****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var altiLabel: UILabel!
    var altimeter:CMAltimeter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        altimeter = CMAltimeter()      //產生測量高度的altimeter
        let operationQ = OperationQueue()
        if CMAltimeter.isRelativeAltitudeAvailable(){   //如果可以使用
            altimeter.startRelativeAltitudeUpdates(to: operationQ, withHandler: {
                (data:CMAltitudeData?, error:Error?) in
                print("releative altitude: \(data!.relativeAltitude) meters")
                //如果要顯示在畫面上的話，請參考下面程式碼
                DispatchQueue.main.async(execute: {
                    self.altiLabel.text = "\(Int(data!.relativeAltitude))"
                })
            })
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        altimeter.stopRelativeAltitudeUpdates()     //停止更新高度資料
    }
}
