//********************************************************************
//********************************************************************
//******************************* Data *******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let webAddress = "https://goo.gl/CdLrCN" //想要連結的網址
        let webURL = URL(string: webAddress)     //用網址產生URL
        if let url = webURL{            //如果真的可以轉換成URL的話
            DispatchQueue.global().async {   //到背景執行佇列去下載
                do{
                    
                    //用這行程式碼下載，下載到的資料存在常數downloadedData中
                    let downloadedData = try Data(contentsOf: url)
                    
                    //下載到的資料可能是文字、html、JSON、XML，或是圖片等資料
                    /* 如果下載的資料是字串的話，請用下面的程式碼來處理
                    guard let downloadedString = NSString(
                        data: downloadedData,
                        encoding: String.Encoding.utf8.rawValue) else{
                            return
                    }
                    print(downloadedString) //downloadString是下載的字串
                    */
                    
                    //如果下載的資料是圖片的話，請用下面的程式碼處理
                    //用下載的資料產生UIImage
                    let downloadedImage = UIImage(data:downloadedData)
                    //到主佇列更新圖片
                    DispatchQueue.main.async {
                        self.myImageView.image = downloadedImage
                    }
                }catch{
                    print("下載發生錯誤")
                }
            }
        }
    }
}

