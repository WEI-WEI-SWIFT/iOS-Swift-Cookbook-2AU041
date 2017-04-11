//********************************************************************
//********************************************************************
//************************** Map Annotation **************************
//********************************************************************
//********************************************************************

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
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
    
    /**************** 更改大頭針顏色 **************************
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            //判斷大頭針是否為別的類別。如果不是MKPointAnnotation而是MKUserLocation的話，
            //就return離開
            return nil
        }
        
        let identifier = "MyPin" //新建一個之後來判斷可否回收的標記
        //試著看看是否有可重複使用的大頭針，如果有的話，存在變數 result 中
        var result = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        if result == nil{
            //如果沒有可重複使用的大頭針，則新建一個大頭針，並設定其顯示文字
            result = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }else{
            //如果有的話，設定其顯示文字
            result?.annotation = annotation
        }
        
        //設定點選可以秀出資訊
        result?.canShowCallout = true
        //設定大頭針顏色
        (result as! MKPinAnnotationView).pinTintColor = UIColor.blue
        //設定大頭針是否做出掉下的動畫
        (result as! MKPinAnnotationView).animatesDrop = true
        //回傳大頭針
        return result
    }
    */
    
    //**************** 更改大頭針的圖片 *******************
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            //判斷大頭針是否為別的類別。如果不是MKPointAnnotation而是MKUserLocation的話，
            //就return離開
            return nil
        }
        
        let identifier = "MyPin" //新建一個之後來判斷可否回收的標記
        //試著看看是否有可重複使用的大頭針，如果有的話，存在變數 result 中
        var result = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        if result == nil{
            //如果沒有可重複使用的大頭針，則新建一個大頭針，並設定其顯示文字
            result = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }else{
            //如果有的話，設定其顯示文字
            result?.annotation = annotation
        }
        
        //設定點選可以秀出資訊
        result?.canShowCallout = true
        
        //設定大頭針圖片
        result?.image = UIImage(named: "MyPin")
        
        //讀入圖片，設定成Callout左邊顯示的View
        let starImageView = UIImageView(image: UIImage(named: "Star"))
        result?.leftCalloutAccessoryView = starImageView
        
        //Callout的右邊，設定成按鈕
        let button = UIButton(type: .detailDisclosure)
        button.addTarget(self, action: #selector(ViewController.buttonPressed(button:)), for: .touchUpInside)
        result?.rightCalloutAccessoryView = button
        
        //回傳大頭針
        return result
    }
    
    func buttonPressed(button:UIButton){
        print("just pressed button")
    }
}

