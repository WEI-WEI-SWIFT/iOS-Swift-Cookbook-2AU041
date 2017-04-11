//********************************************************************
//********************************************************************
//************************** Show Location ***************************
//********************************************************************
//********************************************************************

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var myMap: MKMapView!
    
    var locationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //產生CLLocationManager，並且要求授權
        locationManager = CLLocationManager()
        locationManager.requestWhenInUseAuthorization()
        
        //得到座標
        let coordinate = locationManager.location?.coordinate
        print("緯度:\(coordinate?.latitude)")     //得到緯度
        print("徑度:\(coordinate?.longitude)")    //得到徑度
        
        //直向縮放
        let latDelta:CLLocationDegrees = 0.01
        //橫向縮放
        let lonDelta:CLLocationDegrees = 0.01
        //從直向縮放與橫向縮放產生縮放範圍
        let span:MKCoordinateSpan =
                            MKCoordinateSpanMake(latDelta, lonDelta)
        //從座標與縮放範圍產生顯示範圍
        if coordinate != nil{
            let region:MKCoordinateRegion =
                            MKCoordinateRegionMake(coordinate!, span)
            
            //讓地圖秀出區域
            myMap.setRegion(region, animated: true)
        }
        
        //設定準確度
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //設定活動模式
        locationManager.activityType = .automotiveNavigation
        //設定delegate
        locationManager.delegate = self
        //開始更新位置資訊
        locationManager.startUpdatingLocation()
        
        //設定userTrackingMode
        myMap.userTrackingMode = .followWithHeading
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
                                
        let coordinate = locations[0].coordinate//拿到目前的座標
        
        print("緯度:\(coordinate.latitude)")     //得到緯度
        print("經度:\(coordinate.longitude)")    //得到徑度
        
        //locations[0].speed                    //得到速度
        //locations[0].altitude                 //得到高度
        //locations[0].course                   //得到前進方向
        //locations[0].distance(from: CLLocation()) //得到距離某位置的距離
    }
    
}

