//********************************************************************
//********************************************************************
//****************************** Geocoder ****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreLocation

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //決定要轉換的座標，下面是法國凱旋門當作範例
        let tunnel =
                  CLLocation(latitude: 48.874010, longitude: 2.295017)
        //產生CLGeocoder
        let geocoder = CLGeocoder()
        //使用CLGeocoder把座標轉換成地點資訊
        geocoder.reverseGeocodeLocation(tunnel) {
            (placemarks:[CLPlacemark]?, error:Error?) in
            if placemarks != nil{
                //如果轉換成功的話，拿到結果陣列的第一個成員
                let placemark = placemarks![0]
                //從上面的結果得到和地點相關的資訊。此資訊是一個Dictionary
                let infoDict = placemark.addressDictionary
                if infoDict != nil{
                    //如果確實有地點資訊的話，將每個鍵值對印出
                    for (key, value) in infoDict!{
                        if value is NSArray{
                            //如果存的值是Array的話，把其中每個值印出來
                            for info in (value as! NSArray){
                                print("\(key):\(info)")
                            }
                        }else if value is NSString{
                            //如果key存的值字串的話，就用下面的程式碼印出來
                            print("\(key):\(value)")
                        }
                    }
                }
            }
        }
    }
}

