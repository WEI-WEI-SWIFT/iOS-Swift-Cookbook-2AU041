//********************************************************************
//********************************************************************
//************************* Draw Curve Line **************************
//********************************************************************
    //********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        context?.move(to: CGPoint(x: 50, y: 150))      //移到線段的第一個點
        //用CGContextAddCurveToPoint 畫曲線
        let endPoint = CGPoint(x: 250, y: 150)
        let controlPoint1 = CGPoint(x: 100, y: 0)
        let controlPoint2 = CGPoint(x: 200, y: 300)
        context?.addCurve(to: endPoint, control1: controlPoint1, control2: controlPoint2)
        UIColor.blue.set()                   //設定線段顏色
        context?.strokePath()                //畫出線段
    }
}
