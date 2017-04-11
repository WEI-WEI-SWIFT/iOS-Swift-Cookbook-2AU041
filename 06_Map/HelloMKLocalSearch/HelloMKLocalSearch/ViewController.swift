//********************************************************************
//********************************************************************
//************************** MKLocalSearch ***************************
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
        
        //****************** 搜尋 *************************
        //產生一個request
        let request = MKLocalSearchRequest()
        //設定要搜尋單詞
        request.naturalLanguageQuery = "Toilet"
        //設定搜尋區域
        request.region = myMap.region
        //產生MKLocalSearch型別的物件
        let search = MKLocalSearch(request: request)
        //開始搜尋
        search.start {
            (response:MKLocalSearchResponse?, error:Error?) -> Void in
            if error == nil && response != nil{
                //如果沒有錯誤而且搜尋有結果的話...
                for item in response!.mapItems{
                    //把結果的位置上加上大頭針
                    self.myMap.addAnnotation(item.placemark)
                }
            }
        }
    }
}

