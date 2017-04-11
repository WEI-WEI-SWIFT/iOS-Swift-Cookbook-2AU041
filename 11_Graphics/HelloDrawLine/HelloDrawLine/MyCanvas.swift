//********************************************************************
//********************************************************************
//**************************** Draw Line *****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        context?.move(to: CGPoint(x: 50, y: 50))       //移到線段的第一個點
        context?.addLine(to: CGPoint(x: 250, y: 250))  //畫出一條線
        context?.addLine(to: CGPoint(x: 50, y: 250))   //繼續畫出第二條線
        context?.setLineWidth(15)          //設定線段寬度
        context?.setLineCap(.round)        //設定線段端點
        context?.setLineJoin(.bevel)       //設定線段轉折
        UIColor.red.set()                    //設定線段顏色
        context?.strokePath()                //畫出線段
    }
}
