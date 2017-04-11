//
//  MyCanvas.swift
//  HelloDrawPath
//
//  Created by appsgaga on 2016/2/5.
//  Copyright © 2016年 appsgaga. All rights reserved.
//

import UIKit

class MyCanvas: UIView {

    override func drawRect(rect: CGRect) {
        var path = CGPathCreateMutable()
        let rectangle = CGRect(x: 10, y: 30, width: 200, height: 250)
        var transform = CGAffineTransformMakeTranslation(0, -20)
        CGPathAddRect(path, &transform, rectangle)
        
        let currentContext = UIGraphicsGetCurrentContext()
        CGContextSaveGState(currentContext)
        CGContextAddPath(currentContext, path)
        
        UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0).setFill()
        UIColor.brownColor().setStroke()
        CGContextSetLineWidth(currentContext, 5)
        CGContextDrawPath(currentContext, .FillStroke)
        
        CGContextSetBlendMode(currentContext, .Overlay)
        path = CGPathCreateMutable()
        UIColor.redColor().setFill()
        UIColor.greenColor().setStroke()
        let rectangleAgain = CGRect(x: 40, y: 10, width: 90, height: 150)
        CGPathAddRect(path, nil, rectangleAgain)
        CGContextAddPath(currentContext, path)
        CGContextDrawPath(currentContext, .FillStroke)
        CGContextRestoreGState(currentContext)
    }

}
