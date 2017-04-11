//********************************************************************
//********************************************************************
//****************************** Timer *******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var numberToCount = 0
    var myTimer:Timer?
    
    func counting(){
        numberToCount += 1
        timeLabel.text = "\(numberToCount)"
    }
    
    @IBAction func startCounting(_ sender: UIBarButtonItem) {
        myTimer = Timer.scheduledTimer(timeInterval: 1.0,
           target: self, selector: #selector(ViewController.counting),
                                        userInfo: nil, repeats: true)
    }
    @IBAction func pauseCounting(_ sender: UIBarButtonItem) {
        myTimer?.invalidate()
    }
    
    @IBAction func reset(_ sender: UIBarButtonItem) {
        numberToCount = 0
        timeLabel.text = "0"
    }
}

