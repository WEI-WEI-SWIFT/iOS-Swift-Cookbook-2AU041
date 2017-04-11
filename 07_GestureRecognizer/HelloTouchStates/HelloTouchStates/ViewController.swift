//********************************************************************
//********************************************************************
//*********** Touches Began, Touches Moved, Touches Ended ************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSquare: UIView!
    //記錄觸碰的起點與終點
    var touchStartPoint:CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        //開啟多指觸碰功能
        view.isMultipleTouchEnabled = true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("觸碰開始：共\(touches.count)隻手指觸碰")
        
        //取得任何一個觸控點
        if let touch = touches.first{
            //拿到觸碰的開始位置
            let touchPosition = touch.location(in: self.view)
            print("觸碰位置：\(touchPosition)")
            touchStartPoint = touchPosition
        }
        
        //如果多點觸碰，可以列出所有觸碰點的觸碰位置
        var index = 1
        for touch in touches{
            let touchPosition = touch.location(in: self.view)
            print("第\(index)根手指的觸碰位置：\(touchPosition)")
            index += 1
        }
    }
    
    //觸碰中移動
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("觸碰移動中：共\(touches.count)隻手指")
        
        //取得任何一個觸控點
        if let touch = touches.first{
            let touchPosition = touch.location(in: self.view)
            print("目前移動到這個位置：\(touchPosition)")
            let lastTimePosition = touch.previousLocation(in: self.view)
            print("之前的位置：\(lastTimePosition)")
        }
    }
    
    //觸碰結束
    override func touchesEnded(_ touches: Set<UITouch>,
                                                  with event: UIEvent?) {
        print("觸碰結束")
        //取得任何一個觸控點
        if let touch = touches.first{
            let touchEndPosition = touch.location(in: self.view)
            print("結束位置：\(touchEndPosition)")
            
            if touchStartPoint.y - touchEndPosition.y > 100{
                print("向上滑動")
                redSquare.transform = redSquare.transform.translatedBy(x: 0, y: -10)
            }else if touchStartPoint.y - touchEndPosition.y < -100{
                print("向下滑動")
                redSquare.transform = redSquare.transform.translatedBy(x: 0, y: 10)
            }else if touchStartPoint.x - touchEndPosition.x > 100{
                print("向左滑動")
                redSquare.transform = redSquare.transform.translatedBy(x: -10, y: 0)
            }else if touchStartPoint.x - touchEndPosition.x < -100{
                print("向右滑動")
                redSquare.transform = redSquare.transform.translatedBy(x: 10, y: 0)
            }
        }
    }

}

