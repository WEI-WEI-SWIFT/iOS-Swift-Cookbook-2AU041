//********************************************************************
//********************************************************************
//************************* Speed Up Music ***************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var myPlayer:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Right", ofType: "mp3")
        do {
            myPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        } catch {
            myPlayer = nil
        }
        myPlayer?.enableRate = true //1 設成 true，才可以調整速度
        myPlayer?.rate = 2  //2 用 rate 屬性調整，預設的速度是 1。最慢半速0.5; 最快兩倍速2
    }
    
    @IBAction func playSound(_ sender: UIButton) {
        myPlayer?.stop()
        myPlayer?.currentTime = 0.0
        myPlayer?.play()
    }
}

