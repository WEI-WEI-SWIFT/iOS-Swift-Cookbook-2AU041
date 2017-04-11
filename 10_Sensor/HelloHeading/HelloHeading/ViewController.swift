//********************************************************************
//********************************************************************
//************************ Heading and Compass ***********************
//********************************************************************
//********************************************************************

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {
    
    @IBOutlet weak var indicator: UIImageView!
    var locationManager:CLLocationManager!      //指北針的指針
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()  //生成CLLocationManager
        locationManager.delegate = self //設定ViewController為delegate
        if CLLocationManager.headingAvailable(){ //如果可以使用電子羅盤..
            locationManager.startUpdatingHeading() //開始更新電子羅盤資料
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        if newHeading.headingAccuracy >= 0{     //如果小於0，資料無法使用
            print("地磁北方: \(newHeading.magneticHeading)")
            print("地理北方: \(newHeading.trueHeading)")
            
            //下面為製作指北針的程式碼
            //求出旋轉徑度
            let headingInRadian = -1.0 * Double(M_PI) * newHeading.magneticHeading / 180.0
            //讓指針轉向
            indicator.transform = CGAffineTransform(rotationAngle: CGFloat(headingInRadian))
        }
    }
}
