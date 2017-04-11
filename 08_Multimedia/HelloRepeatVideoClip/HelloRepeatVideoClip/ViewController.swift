//********************************************************************
//********************************************************************
//************************ Repeat Vidio Clip *************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    var videoPlayer:AVPlayer!
    
    @IBAction func playVideo(_ sender: UIButton) {
        let videoURL = Bundle.main.url(forResource: "HipHop", withExtension: "mp4")
        videoPlayer = AVPlayer(url: videoURL!)
        let videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = videoPlayer
        present(videoPlayerController, animated: true, completion: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.playerDidReachEnd(notification:)), name:NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer.currentItem) //1
        videoPlayer.play()
    }
    
    func playerDidReachEnd(notification:Notification){
        let playerItem = notification.object as! AVPlayerItem
        playerItem.seek(to: kCMTimeZero)
        videoPlayer.play() //2
    }
    
    /* 移除重複播放用 removeObserver就好了，程式碼於下：
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: videoPlayer.currentItem)
    }
    */
}
