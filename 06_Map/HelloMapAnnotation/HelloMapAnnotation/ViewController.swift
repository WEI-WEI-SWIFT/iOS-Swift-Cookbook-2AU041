//********************************************************************
//********************************************************************
//************************** Map Annotation **************************
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
        
        let annotation = MKPointAnnotation() //產生大頭針
        annotation.coordinate = coordinate   //設定大頭針的座標
        annotation.title = "艾菲爾鐵塔"        //大頭針標題
        annotation.subtitle = "真想來這邊旅行" //大頭針副標題
        myMap.addAnnotation(annotation)      //把大頭針加到地圖上
    }

    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer) {
        let touchPoint = sender.location(in: self.myMap) //得到觸碰點
        let coordinate = myMap.convert(touchPoint,
                         toCoordinateFrom: self.myMap) //觸碰點轉成座標
        let annotation = MKPointAnnotation() //產生大頭針
        annotation.coordinate = coordinate   //設定大頭針的座標
        myMap.addAnnotation(annotation)      //把大頭針加到地圖上
    }
}
