//********************************************************************
//********************************************************************
//***************************** Draw Arc *****************************
//********************************************************************
    //********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        context?.move(to: CGPoint(x: 250, y: 150))      //移到線段的第一個點
        let centerPoint = CGPoint(x: 150, y: 150)
        //呼叫 addArc 方法畫曲線
        context?.addArc(center: centerPoint, radius: 100, startAngle: 0, endAngle: CGFloat(45.0 * .pi)/180.0, clockwise: false)
        UIColor.orange.set()                 //設定線段顏色
        context?.setLineWidth(5)           //設定線段粗細
        context?.strokePath()                //畫出線段
    }
}
