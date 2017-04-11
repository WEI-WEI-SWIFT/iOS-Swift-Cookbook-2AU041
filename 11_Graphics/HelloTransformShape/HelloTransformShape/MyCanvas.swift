//********************************************************************
//********************************************************************
//************************* Transform Shape **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let path = CGMutablePath()            //產生路徑
        let rectArea =
            CGRect(x: 50, y: 50, width: 100, height: 100) //設定方形範圍
        
        //移動圖形
        let transform = CGAffineTransform(translationX: 100, y: 200)
        
        //縮放圖形
        //let transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        
        //旋轉圖形
        //let radian = CGFloat((10.0 * .pi)/180.0)   //設定旋轉角度
        //let transform = CGAffineTransform(rotationAngle: radian)
        
        //加入路徑時，附帶變形設定
        path.addRect(rectArea, transform: transform)
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)             //把路徑加入繪圖情境

        UIColor.magenta.setFill()            //設定顏色
        context?.drawPath(using: .fill)   //填色
    }
    
}


//移動圖形位置
//var transform = CGAffineTransform(translationX: 100, y: 200)

//縮放圖形
//var transform = CGAffineTransformMakeScale(2.0, 2.0)

//旋轉圖形
//let radian = CGFloat((10.0 * .pi)/180.0)   //設定旋轉角度
//var transform = CGAffineTransformMakeRotation(radian)
