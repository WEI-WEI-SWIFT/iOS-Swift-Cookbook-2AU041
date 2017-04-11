//********************************************************************
//********************************************************************
//**************************** Pie Chart *****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        context?.move(to: CGPoint(x: 150, y: 150))  //移到第一個圖形的第一個點
        let centerPoint = CGPoint(x: 150, y: 150)
        context?.addArc(center: centerPoint, radius: 100, startAngle: 0, endAngle: CGFloat(300.0 * .pi)/180.0, clockwise: true)
        context?.closePath()         //畫出弧線之後，關閉第一個圖形的路徑
        UIColor.blue.set()           //設定填色為藍色
        context?.fillPath()
        context?.move(to: CGPoint(x: 150, y: 150))  //移到第二個圖形的第一個點
        context?.addArc(center: centerPoint, radius: 100, startAngle: 0, endAngle: CGFloat(300.0 * .pi)/180.0, clockwise: false)
        context?.closePath()         //畫出弧線之後，關閉第二個圖形的路徑
        UIColor.magenta.set()        //設定填色為粉紅色
        context?.fillPath()
    }

}
