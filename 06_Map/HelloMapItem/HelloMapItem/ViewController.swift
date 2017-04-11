//********************************************************************
//********************************************************************
//***************************** MKMapItem ****************************
//********************************************************************
//********************************************************************

import UIKit
import MapKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //決定艾菲爾鐵塔與羅浮宮的座標
        let towerCoordinate = CLLocationCoordinate2DMake(48.858554, 2.294513)
        let lourveCoordinate = CLLocationCoordinate2DMake(48.860893, 2.337601)
        
        //從座標製作出兩個MKPlacemark
        let towerMark = MKPlacemark(coordinate: towerCoordinate, addressDictionary: nil)
        let lourveMark = MKPlacemark(coordinate: lourveCoordinate, addressDictionary: nil)
        
        //從MKPlacemark 製作出兩個 MKMapItem
        let tower = MKMapItem(placemark: towerMark)
        let lourve = MKMapItem(placemark: lourveMark)
        
        //可以分別為兩個 MKMapItem 標註名稱
        tower.name = "艾菲爾鐵塔"
        lourve.name = "羅浮宮"
        
        //把兩個地點放到一個陣列中
        let route = [tower,lourve]
        
        //設定導航模式
        let options = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeWalking]
        
        //開啟地圖開始導航
        MKMapItem.openMaps(with: route, launchOptions: options)
    }
}

