//********************************************************************
//********************************************************************
//************************** Draw With Path **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let path = CGMutablePath()                  //產生路徑
        path.move(to: CGPoint(x: 50, y: 50))        //移到線段端點
        path.addLine(to: CGPoint(x: 250, y: 250))   //加上線段
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)                    //把路徑加入繪圖情境
        
        UIColor.red.setStroke()                   //設定顏色
        context?.setLineWidth(10)                 //設定線段粗細
        context?.strokePath()                     //畫出線段
        //context?.drawPath(using: .stroke)       //畫線段的另外一個方法

        
        /***** 繪製圖形 *****
        let path = CGMutablePath()            //產生路徑
        path.move(to: CGPoint(x: 0, y: 110))        //移到線段端點
        path.addLine(to: CGPoint(x: 100, y: 90))    //開始增加線段
        path.addLine(to: CGPoint(x: 150, y: 0))
        path.addLine(to: CGPoint(x: 200, y: 90))
        path.addLine(to: CGPoint(x: 300, y: 110))
        path.addLine(to: CGPoint(x: 230, y: 185))
        path.addLine(to: CGPoint(x: 243, y: 286))
        path.addLine(to: CGPoint(x: 150, y: 243))
        path.addLine(to: CGPoint(x: 57, y: 286))
        path.addLine(to: CGPoint(x: 70, y: 185))
        path.closeSubpath()                         //關閉路徑
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)                    //把路徑加入繪圖情境
        
        UIColor.yellow.setFill()             //設定顏色
        context?.fillPath()                  //填色
        //context?.drawPath(using: .fill)         //填色的另外一個方法

        
        ***** 繪製曲線 *****
        let path = CGMutablePath()            //產生路徑
        path.move(to: CGPoint(x: 50, y: 150))       //移到線段端點
        path.addCurve(to: CGPoint(x: 250, y: 150),
                      control1: CGPoint(x: 100, y: 0),
                      control2: CGPoint(x: 200, y: 300)) //加入曲線
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)                    //把路徑加入繪圖情境
        
        UIColor.lightGray.set()              //設定顏色
        context?.setLineWidth(10)            //設定線段粗細
        context?.drawPath(using: .stroke)        //畫出線段

        
        ***** 繪製弧線 *****
        let path = CGMutablePath()            //產生路徑
        path.move(to: CGPoint(x: 250, y: 150))      //移到線段端點
        path.addArc(center: CGPoint(x: 150, y: 150), radius: 100, startAngle: 0, endAngle: CGFloat(45.0 * M_PI/180.0), clockwise: false) //加入弧線
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)
        
        UIColor.orange.set()                 //設定顏色
        context?.setLineWidth(10)         //設定線段粗細
        context?.drawPath(using: .stroke)         //畫出線段

        
        ***** 繪製方形 *****
        let path = CGMutablePath()            //產生路徑
        let rectArea = CGRect(x: 50, y: 50, width: 200, height: 100) //設定方形範圍
        path.addRect(rectArea)          //加入方形到路徑中
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)                    //把路徑加入繪圖情境
        
        UIColor.magenta.setFill()            //設定顏色
        context?.fillPath()                 //填色

        
        ***** 繪製圓形 *****
        let path = CGMutablePath()            //產生路徑
        let ellipseArea = CGRect(x: 50, y: 50, width: 100, height: 100) //設定限制圓形的方形範圍
        path.addEllipse(in: ellipseArea) //加入限制圓形的方形到路徑中
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)
        
        UIColor.green.setFill()              //設定顏色
        context?.fillPath()                  //填色
        */
    }
    
}
