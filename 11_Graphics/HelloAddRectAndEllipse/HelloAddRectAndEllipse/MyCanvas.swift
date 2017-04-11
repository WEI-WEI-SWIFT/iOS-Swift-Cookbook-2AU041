//********************************************************************
//********************************************************************
//************************ Rect and Ellipse **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        //設定方形的區域
        let rectArea = CGRect(x: 50, y: 50, width: 100, height: 100)
        context?.addRect(rectArea)             //加入方形
        
        //設定圓形的區域
        let ellipseArea = CGRect(x: 50, y: 200, width: 100, height: 100)
        context?.addEllipse(in: ellipseArea) //加入圓形
        
        UIColor(red: 0.34,green:0.43,blue:0.68,alpha:1).set()   //設定顏色
        context?.fillPath()
    }

}
