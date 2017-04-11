//********************************************************************
//********************************************************************
//*************************** Hollow Circle **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let path = CGMutablePath()            //產生路徑
        let largeCircleArea = CGRect(x: 50, y: 50, width: 300, height: 300) //設定大圓形範圍
        let smallCircleArea = CGRect(x: 100, y: 100, width: 200, height: 200) //設定小圓形範圍
        
        path.addEllipse(in: largeCircleArea) //加入大圓形範圍
        path.addEllipse(in: smallCircleArea) //加入小圓形範圍
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)             //把路徑加入繪圖情境
        
        context?.setLineWidth(10)          //設定邊線粗細
        UIColor.yellow.setStroke()           //設定邊線顏色
        UIColor.magenta.setFill()            //設定顏色
        context?.drawPath(using: .eoFillStroke)   //填色
    }
    
}
