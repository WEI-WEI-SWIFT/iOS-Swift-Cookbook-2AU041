//********************************************************************
//********************************************************************
//************************ Loop and Volume ***************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var myPlayer:AVAudioPlayer?
    
    @IBAction func playSound(_ sender: UIButton) {
        myPlayer?.stop()
        myPlayer?.currentTime = 0.0
        myPlayer?.play()
    }
    
    @IBAction func stopPlaying(_ sender: UIButton) {
        myPlayer?.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "BGM", ofType: "mp3")
        do {
            myPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        } catch {
            myPlayer = nil
        }
        myPlayer?.numberOfLoops = -1 //1 用這個調整Loop，-1是無限循環。
        myPlayer?.volume = 0.8   //2 用這個調整音量。最大1，最小0。
    }
}
