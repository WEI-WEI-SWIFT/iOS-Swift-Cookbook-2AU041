//********************************************************************
//********************************************************************
//******************************* Knob *******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var knob: UIImageView!
    var nowAngle:CGFloat = 0
    
    func distanceBetweenPoints(point1:CGPoint,point2:CGPoint) -> CGFloat{
        let dx = point1.x - point2.x
        let dy = point1.y - point2.y
        return sqrt(dx * dx + dy * dy)
    }
    
    func angleBetweenLines(lineABegin:CGPoint, lineAEnd:CGPoint, lineBBegin:CGPoint,lineBEnd:CGPoint) -> CGFloat{
        let a = lineAEnd.x - lineABegin.x
        let b = lineAEnd.y - lineABegin.y
        let atanA = atan2(a,b) //第一條線段形成的角度
        
        let c = lineBEnd.x - lineBBegin.x
        let d = lineBEnd.y - lineBBegin.y
        let atanB = atan2(c,d) //第二點形成的角度
        
        return (atanA - atanB) * 180 / .pi
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let nowPoint = touches.first?.location(in: self.view)
        let previousPoint = touches.first?.previousLocation(in: self.view)
        let midPoint = knob.center
        let distance = distanceBetweenPoints(point1:midPoint, point2: nowPoint!)
        if distance < knob.bounds.size.width/2{
            let angle = angleBetweenLines(lineABegin:midPoint, lineAEnd: previousPoint!, lineBBegin: midPoint, lineBEnd: nowPoint!)
            nowAngle += angle
            knob.transform = CGAffineTransform(rotationAngle: nowAngle * .pi / 180)
        }
    }
}
