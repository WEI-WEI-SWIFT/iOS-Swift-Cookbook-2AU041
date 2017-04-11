//********************************************************************
//********************************************************************
//**************************** Draw Shape ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()     //取得繪圖情景
        context?.move(to: CGPoint(x: 50, y: 100))     //移到線段的第一個點
        context?.addLine(to: CGPoint(x: 150, y: 0))        //畫出第一條線
        context?.addLine(to: CGPoint(x: 250, y: 100))      //畫出第二條線
        context?.addLine(to: CGPoint(x: 200, y: 100))      //畫出第三條線
        context?.addLine(to: CGPoint(x: 200, y: 300))      //畫出第四條線
        context?.addLine(to: CGPoint(x: 100, y: 300))      //畫出第五條線
        context?.addLine(to: CGPoint(x: 100, y: 100))      //畫出第六條線
        context?.closePath()                     //關閉路徑
        UIColor.red.set()                        //設定顏色
        //CGContextStrokePath(context)                  //畫出線段
        context?.fillPath()                      //填色
    }

}
