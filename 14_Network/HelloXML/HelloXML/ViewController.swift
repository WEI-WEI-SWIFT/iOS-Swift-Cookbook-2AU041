//********************************************************************
//********************************************************************
//******************************* XML ********************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //找到存檔的位置
        if let filePath = Bundle.main.path(forResource: "ClassScore", ofType: "xml"){
            //用位置產生存檔的URL
            let fileURL = URL(fileURLWithPath: filePath)
            do{
                //用URL產生data。
                //用Data或是URLSession連結網路，如果得到JSON的資料的話，
                //就存在downloadedData裡面，準備開始解析
                let downloadedData = try Data(contentsOf: fileURL)
                //把需要解析的XML資料當成參數，產生一個XMLParser實體
                let parser = XMLParser(data: downloadedData)
                //產生實際解析XML資料的ParserHelper實體
                let parseHelper = ParseHelper()
                //設定parseHelper為XMLParser的delegate屬性
                parser.delegate = parseHelper
                if parser.parse() == true{
                    //開始解析，如果成功的話，呼叫parseHelper的getResult
                    //得到解析的結果
                    let result = parseHelper.getResult()
                    print(result)
                }else{
                    print("解析發生錯誤")
                }
            }catch{
                print("無法找到檔案位置")
            }
        }
    }
}

