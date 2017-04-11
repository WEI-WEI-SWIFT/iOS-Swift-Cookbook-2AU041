//********************************************************************
//********************************************************************
//************************** Play My Song ****************************
//********************************************************************
//********************************************************************

import UIKit
import MediaPlayer //1 引入 Media Player 函式庫

class ViewController: UIViewController,MPMediaPickerControllerDelegate { //2 服從MPMediaPickerControllerDelegate
    
    @IBAction func pickMusic(_ sender: AnyObject) {
        let mediaPicker = MPMediaPickerController(mediaTypes: MPMediaType.anyAudio)//3 生成MPMediaPickerController
        mediaPicker.delegate = self //4 把自己這個View Controller 設定給 MPMediaPickerController 的 delegate
        present(mediaPicker, animated: true, completion: nil) //5 推出 MPMediaPickerController
    }
    
    func mediaPickerDidCancel(_ mediaPicker: MPMediaPickerController) {
        dismiss(animated: true, completion: nil) //6 使用者按下 cancel 把 MPMediaPickerController 移除
    }
    
    func mediaPicker(_ mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
        let musicPlayer = MPMusicPlayerController.applicationMusicPlayer() //7 找出目前的 applicationMusicPlayer
        musicPlayer.setQueue(with: mediaItemCollection)
        musicPlayer.play() //8 播放音樂
        dismiss(animated: true, completion: nil) //9 移除 MPMediaPickerController
    }
}
