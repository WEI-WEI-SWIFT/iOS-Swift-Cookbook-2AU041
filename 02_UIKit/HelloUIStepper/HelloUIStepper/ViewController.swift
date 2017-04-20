//********************************************************************
//********************************************************************
//***************************** UIStepper ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func myStepperAction(_ sender: UIStepper) {
        print(sender.value)     //印出目前計數器的數值
        //print(Int(sender.value)) //把計數器的值轉換成整數
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /******************* 用程式碼產生 UIStepper *********************
        //產生UIStepper
        let codeStepper = UIStepper(frame: CGRect(x: 52, y: 100, width: 96, height: 29))
        //設定最小值
        codeStepper.minimumValue = 0
        //設定最大值
        codeStepper.maximumValue = 10
        //設定目前數值
        codeStepper.value = 0
        //設定每次增加的數量
        codeStepper.stepValue = 1
        //設定是持續增加
        codeStepper.autorepeat = true
        //設定是否持續偵測計數事件的發生
        codeStepper.isContinuous = true
        //設定是否到達最大值後跳回最小值繼續計數
        codeStepper.wraps = true
        //設定按下計數器會執行的方法
        codeStepper.addTarget(self, action: #selector(ViewController.codeStepperAction(sender:)), for: .valueChanged)
        //把計數器加到畫面上
        view.addSubview(codeStepper)
        */
    }
    
    func codeStepperAction(sender:UIStepper){
        //此方法設計由上面註釋起來的計數器觸發
        print(Int(sender.value))
    }
}

