//********************************************************************
//********************************************************************
//****************************** UIView ******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    var blueView:UIView!                 //幫類別添加一個 UIView 屬性
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //用程式碼產生 UIView
        let viewArea = CGRect(x: 50.0,y: 50.0,
                              width: 100.0, height: 100.0)//定義一個範圍
        blueView = UIView(frame: viewArea)     //使用範圍來產生一個UIView
        blueView.backgroundColor = UIColor.blue       //設定顏色
        view.addSubview(blueView)                 //把blueView加到畫面上
        
        //得到各種相關數值
        print(blueView.frame.origin.x)      //得到視圖的x座標
        print(blueView.frame.origin.y)      //得到視圖的y座標
        print(blueView.frame.size.width)    //得到視圖的寬度
        print(blueView.frame.size.height)   //得到視圖的高度
        print(blueView.center.x)            //得到視圖中心的x座標
        print(blueView.center.y)            //得到視圖中心的y座標
        
        print(blueView.frame.minX)   //得到視圖最小的x座標值
        print(blueView.frame.minY)   //得到視圖最小的y座標值
        print(blueView.frame.maxX)   //得到視圖最大的x座標值
        print(blueView.frame.maxX)   //得到視圖最大的y座標值
        print(blueView.frame.midX)   //得到視圖中點的x座標值
        print(blueView.frame.midY)   //得到視圖中點的y座標值
        print(blueView.frame.width)  //得到視圖的寬度
        print(blueView.frame.height) //得到視圖的高度
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //設定位置與大小的第一種方法
        blueView.frame.origin.x = 100
        blueView.frame.origin.y = 200
        blueView.frame.size.width = 50
        blueView.frame.size.height = 150
        
        //設定位置與大小的第二種方法
        let newPoint = CGPoint(x: 100, y: 200)
        blueView.frame.origin = newPoint
        let newSize = CGSize(width: 50, height: 150)
        blueView.frame.size = newSize
        
        //設定位置與大小的第三種方法
        let newArea = CGRect(x: 100,y: 200, width: 50, height: 150)
        blueView.frame = newArea
    }
}



