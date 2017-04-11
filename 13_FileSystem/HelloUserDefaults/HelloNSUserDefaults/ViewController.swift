//********************************************************************
//********************************************************************
//************************** NSUserDefaults **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBAction func load(_ sender: UIButton) {
        //找到程式中的 userDefaults，使用各種方法讀取資料
        let userDefaults = UserDefaults.standard
        if let name = userDefaults.object(forKey: "name"){
            print("name:\(name as! String)")
        }
        if let numberArray = userDefaults.object(forKey: "numberArray"){
            print("numberArray:\(numberArray as! NSArray)")
        }
        if let fruitDict = userDefaults.object(forKey: "fruitDict"){
            print("fruitDict:\(fruitDict as! NSDictionary)")
        }
        if let imageData = userDefaults.object(forKey: "imageData"){
            (self.view.subviews[0] as! UIImageView).image = UIImage(data: imageData as! Data)
        }
        print("isGameFun:\(userDefaults.bool(forKey: "isGameFun"))")
        print("HealthPoint:\(userDefaults.double(forKey: "HealthPoint"))")
        print("Attck:\(userDefaults.float(forKey: "Attack"))")
        print("Highscore:\(userDefaults.integer(forKey: "Highscore"))")
        if let link = userDefaults.url(forKey: "Link"){
            print("Link:\(link)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //如果要存圖片，要把圖片轉成 NSData，才能儲存。
        let catImage = UIImage(named: "MyCat")
        let imageData = UIImageJPEGRepresentation(catImage!, 100)
        
        //找到程式中的 userDefaults，使用各種方法儲存資料
        let userDefaults = UserDefaults.standard
        userDefaults.set("Wei Wei", forKey: "name")
        userDefaults.set([1,2,3,4], forKey: "numberArray")
        userDefaults.set(["red":"apple","yellow":"banana"], forKey: "fruitDict")
        userDefaults.set(imageData, forKey: "imageData")
        userDefaults.set(true, forKey: "isGameFun")
        userDefaults.set(100.0, forKey: "HealthPoint")
        userDefaults.set(80.0, forKey: "Attack")
        userDefaults.set(90, forKey: "Highscore")
        userDefaults.set(URL(string: "https://www.appsgaga.com"), forKey: "Link")
        
        //最後要同步，才完成儲存
        userDefaults.synchronize()
    }
}

