//********************************************************************
//********************************************************************
//******************************** Map *******************************
//********************************************************************
//********************************************************************

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //緯度
        let latitude:CLLocationDegrees = 48.858532
        //徑度
        let longitude:CLLocationDegrees = 2.294481
        //從緯度與徑度產生座標
        let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        //直向縮放
        let latDelta:CLLocationDegrees = 0.01
        //橫向縮放
        let lonDelta:CLLocationDegrees = 0.01
        //從直向縮放與橫向縮放產生縮放範圍
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        //從座標與縮放範圍產生顯示範圍
        let region:MKCoordinateRegion = MKCoordinateRegionMake(coordinate, span)
        //讓地圖秀出區域
        myMap.setRegion(region, animated: true)
        //設定地圖的模式
        myMap.mapType = .satellite
    }
}

