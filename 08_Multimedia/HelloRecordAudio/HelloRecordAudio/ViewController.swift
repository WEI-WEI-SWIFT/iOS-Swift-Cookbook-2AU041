//********************************************************************
//********************************************************************
//************************** Record Audio ****************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation //1

class ViewController: UIViewController,AVAudioRecorderDelegate { //2
    var audioRecorder:AVAudioRecorder? //3
    var myPlayer:AVAudioPlayer? //4
    var isRecording = false

    @IBAction func recordAudio(_ sender: UIButton) {
        let documentPath =
            NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let recordingName = "User.wav" //5
        let filePath = documentPath + "/" + recordingName
        let fileURL = URL(fileURLWithPath: filePath) //6
        
        let session = AVAudioSession.sharedInstance()
        
        do {
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord)//7
        } catch _ {
        }
        
        let recordSettings:[String:Any] = [
            AVEncoderAudioQualityKey: AVAudioQuality.min.rawValue,
            AVEncoderBitRateKey: 16,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey: 44100.0] //8
        
        do {
            audioRecorder = try AVAudioRecorder(url: fileURL, settings: recordSettings) //9
            
        } catch _ {
            audioRecorder = nil
        }
        audioRecorder?.delegate = self //10
        audioRecorder?.prepareToRecord() //11
        audioRecorder?.record() //12
        isRecording = true
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if (flag){
            do {
                myPlayer = try AVAudioPlayer(contentsOf: recorder.url) //13
                //record.url 就是存檔的位置
            } catch _ {
                myPlayer = nil
            }
        }
    }
    
    @IBAction func stopRecord(_ sender: UIButton) {
        if audioRecorder != nil {
            audioRecorder?.stop()
            isRecording = false
            let audioSession = AVAudioSession.sharedInstance()
            do {
                try audioSession.setCategory(AVAudioSessionCategoryPlayback) //14
            } catch _ {
            }
            do {
                try audioSession.setActive(false)
            } catch _ {
            }
        }
    }
    
    @IBAction func playRecordedSound(_ sender: UIButton) {
        if myPlayer != nil && isRecording == false{
            myPlayer?.currentTime = 0.0
            myPlayer?.play() //15
        }
    }
    
    
    @IBAction func stopPlay(_ sender: UIButton) {
        if myPlayer != nil && isRecording == false{
            myPlayer?.stop()
            myPlayer?.currentTime = 0.0
        }
    }
}

