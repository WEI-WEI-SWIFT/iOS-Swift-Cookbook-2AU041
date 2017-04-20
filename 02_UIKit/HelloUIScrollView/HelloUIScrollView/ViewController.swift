//********************************************************************
//********************************************************************
//**************************** Scroll View ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.contentSize.width = 1080       //設定顯示內容寬度
        myScrollView.contentSize.height = 1080      //設定顯示內容高度
        myScrollView.minimumZoomScale = 1.0         //設定最小縮放比例
        myScrollView.maximumZoomScale = 5.0         //設定最大縮放比例
        
        /*************** 用程式碼產生 Scroll View *****************
        //產生UIImageView
        let bigImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 1080, height: 1080))
        //產生UIImage
        let bigImage = UIImage(named: "MyCat.jpg")
        //設定UIImageView要顯示的圖片
        bigImageView.image = bigImage
        //產生ScrollView
        let codeScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        //設定ScrollView的內容寬度與高度
        codeScrollView.contentSize.width = 1080
        codeScrollView.contentSize.height = 1080
        //把ImageView加到ScrollView
        codeScrollView.addSubview(bigImageView)
        //把ScrollView加到畫面上
        view.addSubview(codeScrollView)
        */
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myImageView                          //要放大縮小的圖片
    }
}

