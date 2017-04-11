//********************************************************************
//********************************************************************
//**************************** Pedometer *****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ascendLabel: UILabel!
    @IBOutlet weak var descendLabel: UILabel!
    
    var pedometer:CMPedometer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pedometer = CMPedometer()   //產生 CMPedometer 計步器
        if CMPedometer.isStepCountingAvailable() &&  //如果能夠計步
            CMPedometer.isDistanceAvailable() &&     //如果可以紀錄距離
            CMPedometer.isFloorCountingAvailable() { //如果可以紀錄爬樓
            pedometer.startUpdates(from: Date(), withHandler: { (data:CMPedometerData?, error:Error?) -> Void in
                print("Step: \(data!.numberOfSteps)")   //印出步數
                print("Distance: \(data!.distance)")    //印出走路距離
                print("Floor Ascend: \(data!.floorsAscended)")  //上樓
                print("Floor Descend: \(data!.floorsDescended)")//下樓
                //下面程式碼更新畫面上的文字，要在 main queue 更改
                DispatchQueue.main.async(execute: {
                    self.stepLabel.text =
                                       "Step: \(data!.numberOfSteps)"
                    self.distanceLabel.text = "Distance: \(Int(data!.distance!))"
                    self.ascendLabel.text = "FloorAscend: \(data!.floorsAscended!)"
                    self.descendLabel.text = "FloorDescend: \(data!.floorsDescended!)"
                })
            })
            
            pedometer.queryPedometerData(from:
                Date(timeIntervalSinceNow: -24 * 60 * 60), to: Date(), withHandler: {
                    (data:CMPedometerData?, error:Error?) -> Void in
                    print("Step(YesterdayTillNow): \(data!.numberOfSteps)")
                    print("Distance(YesterdayTillNow): \(data!.distance)")
                    print("Ascend(FromYesterday):\(data!.floorsAscended)")
                    print("Descend(FromYesterday):\(data!.floorsDescended)")
                })
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        pedometer.stopUpdates()
    }
}

