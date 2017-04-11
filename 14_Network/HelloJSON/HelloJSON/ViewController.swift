//********************************************************************
//********************************************************************
//******************************* JSON *******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //找到存檔的位置
        if let filePath = Bundle.main.path(forResource: "json", ofType: "txt"){
            //用位置產生存檔的URL
            let fileURL = URL(fileURLWithPath: filePath)
            do{
                //用URL產生data。
                //用Data或是URLSession連結網路，如果得到JSON的資料的話，
                //就存在downloadedData裡面，準備開始解析
                let downloadedData = try Data(contentsOf: fileURL)
                
                //先用JSONSerialization的jsonObject方法，
                //轉換成Swift可用的資料，存在常數json中。
                //根據不同的情況解析其中的資料。
                let json = try JSONSerialization.jsonObject(with: downloadedData, options: [])
                //整包資料是一個字典，所以轉型成字典
                if let jsonDict = json as? [String:Any]{
                    //用results這個key，拿到的資料是一個陣列，這個陣列裡面是一個字典
                    if let jsonArray = jsonDict["results"] as? [[String:Any]]{
                        //找到陣列第零個成員，用name這個key，找到儲存名字的字典
                        //用first與last這兩個key，拿到相關的資料，取得全名。
                        if let nameArray = jsonArray[0]["name"] as? [String:String]{
                            let fullName = nameArray["first"]! + " " + nameArray["last"]!
                            print("名字是：\(fullName)")
                        }
                        //找到陣列第零個成員，用age這個key，找到年紀
                        let jsonAge = jsonArray[0]["age"]
                        print("年紀是：\(jsonAge!)")
                    }
                }
            }catch{
                print("檔案無法讀取:\(error.localizedDescription)")
            }
        }
    }
}

