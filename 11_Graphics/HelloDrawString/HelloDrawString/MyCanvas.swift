//********************************************************************
//********************************************************************
//*************************** Draw String ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func draw(_ rect: CGRect) {
        let fontName = "Arial-BoldMT"    //設定字型名稱，之後用此名稱設定UIFont
        let ArialBold = UIFont(name: fontName, size: 30.0)
        let swiftString:NSString = "I Love Swift"         //這是要顯示的文字
        
        //用draw方法繪製文字
        swiftString.draw(at: CGPoint(x: 100, y: 100),
            withAttributes: [NSFontAttributeName: ArialBold!,
                NSForegroundColorAttributeName: UIColor.red])
    }

}
