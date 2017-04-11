//********************************************************************
//********************************************************************
//**************************** Multi Line ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        context?.move(to: CGPoint(x: 50, y: 50))       //移到線段的第一個點
        context?.addLine(to: CGPoint(x: 250, y: 250))  //畫出一條線
        
        context?.move(to: CGPoint(x: 250, y: 50)) //移到第二條線段的第一個點
        context?.addLine(to: CGPoint(x: 50, y: 250))  //再畫出一條線
        
        context?.setLineWidth(15)          //設定線段寬度
        UIColor.red.set()                    //設定線段顏色
        context?.strokePath()                //畫出線段
    }
}

