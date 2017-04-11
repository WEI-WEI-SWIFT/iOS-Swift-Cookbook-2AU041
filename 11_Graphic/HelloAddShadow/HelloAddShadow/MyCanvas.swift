//********************************************************************
//********************************************************************
//**************************** Add Shadow ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func draw(_ rect: CGRect) {
        let path = CGMutablePath()            //產生路徑
        let rectArea = CGRect(x: 50, y: 50, width: 200, height: 100) //設定方形範圍
        path.addRect(rectArea)          //加入方形到路徑中
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        context?.addPath(path)             //把路徑加入繪圖情境
        
        UIColor.magenta.setFill()            //設定顏色
        context?.setShadow(offset: CGSize(width: 10,height: 10),
            blur: 20,
            color: UIColor.lightGray.cgColor)
        context?.fillPath()                  //填色
    }
    
}
