//********************************************************************
//********************************************************************
//*************************** Play Audio *****************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation //1 引入AVFoundation

class ViewController: UIViewController {
    var myPlayer:AVAudioPlayer?
    
    @IBAction func playSound(_ sender: UIButton) {
        myPlayer?.stop()
        myPlayer?.currentTime = 0.0
        myPlayer?.play()  //3 播放音檔
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //2 找到 path，生成AVAudioPlayer
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3"){
            do {
                myPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            } catch _ {
                myPlayer = nil
            }
        }
    }
}
