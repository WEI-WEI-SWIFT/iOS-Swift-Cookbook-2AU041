//********************************************************************
//********************************************************************
//************************* Play Vidio Clip **************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation //1
import AVKit //2

class ViewController: UIViewController {
    @IBAction func playVideo(_ sender: UIButton) {
        let videoURL = Bundle.main.url(forResource: "HipHop", withExtension: "mp4")//3
        let videoPlayer = AVPlayer(url: videoURL!) //4
        let videoPlayerController = AVPlayerViewController()//5
        videoPlayerController.player = videoPlayer //6
        present(videoPlayerController, animated: true, completion: nil) //7
        videoPlayer.play() //8
    }
}

