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
            //1.產生URLSession
            let session = URLSession(configuration: .default)
            //2.呼叫URLSession的dataTask方法
            let task =
                    session.dataTask(with: url, completionHandler: {
                        //下載完之後執行這個 Closure
                (data:Data?, response:URLResponse?, error:Error?) in
                        if error != nil{ //如果有錯誤的話，印出錯誤，
                            print("發生錯誤：\(error!.localizedDescription)")
                            return       //有錯誤，跳出不再繼續執行
                        }
                        if let downloadedData = data{
                            //downloadedData就是下載下來的資料
                            //下載到的資料可能是文字、HTML、
                            //JSON、XML，或是圖片等資料
                            //如果下載的資料是圖片的話，請用下面的程式碼處理
                            //用下載的資料產生UIImage
                            let downloadedImage = UIImage(data:downloadedData)
                            //到主佇列更新圖片
                            DispatchQueue.main.async {
                                self.myImageView.image =
                                                    downloadedImage
                            }
                        }
            })
            
            //3.開始下載
            task.resume()
        }
    }
    
    /*使用 downloadTask 連結網路下載資料
     override func viewDidLoad() {
     super.viewDidLoad()
     let webAddress = "https://goo.gl/CdLrCN" //想要連結的網址
     let webURL = URL(string: webAddress)     //用網址產生URL
     if let url = webURL{            //如果真的可以轉換成URL的話
     //1.產生URLSession
     let session = URLSession(configuration: .default)
     //2.呼叫URLSession的dataTask方法
     let task = session.downloadTask(with: url, completionHandler: { //下載完之後執行這個 Closure
     (url:URL?, response:URLResponse?, error:Error?) in
     if error != nil{ //如果有錯誤的話，印出錯誤，
     print("發生錯誤：\(error!.localizedDescription)")
     return       //有錯誤，跳出不再繼續執行
     }
     
     if let downloadURL = url{
     //downloadedURL就是下載下來的資料在手機上的URL
     //下載到的資料可能是文字、HTML、
     //JSON、XML，或是圖片等資料
     //如果下載的資料是圖片的話，請用下面的程式碼處理
     //用下載的資料的URL產生Data，用Data產生UIImage
     do{
     //用下載的資料的URL產生Data
     let downloadedData = try Data(contentsOf: downloadURL)
     //用Data產生UIImage
     let downloadedImage = UIImage(data:downloadedData)
     //到主佇列更新圖片
     DispatchQueue.main.async {
     self.myImageView.image = downloadedImage
     }
     }catch{
     print("轉換資料失敗")
     }
     
     }
     })
     
     //3.開始下載
     task.resume()
     }
     }
     */
}
