//********************************************************************
//********************************************************************
//**************************** Dash Line *****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()     //取得繪圖情景
        context?.move(to: CGPoint(x: 50, y: 150))       //移到線段的第一個點
        context?.addLine(to: CGPoint(x: 250, y: 150))       //畫出一條線
        context?.setLineDash(phase: 0, lengths: [10,20])
        context?.setLineWidth(5)               //設定線段粗細
        //context?.setLineDash(phase: 0, lengths: [5,10,10,10])
        UIColor.red.set()                        //設定線段顏色
        context?.strokePath()                    //畫出線段
    }
}
