//********************************************************************
//********************************************************************
//***************************** UISlider *****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func mySliderAction(_ sender: UISlider) {
        //print(sender.value)     //印出目前滑桿的數值
        print(Int(sender.value)) //把滑桿的數值轉換成整數
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /**************** 使用程式碼製作 UISlider ******************
        //產生 UISlider
        let codeSlider = UISlider(frame: CGRect(x: 61, y: 80, width: 118, height: 31))
        //設定滑動觸發的程式碼
        codeSlider.addTarget(self, action: #selector(ViewController.codeSliderValueChanged(sender:)), for: .valueChanged)
        //設定滑桿最小值
        codeSlider.minimumValue = 1
        //設定滑桿最大值
        codeSlider.maximumValue = 100
        //設定滑桿目前的值
        codeSlider.value = 50
        //把滑桿加入畫面
        view.addSubview(codeSlider)
        */
        
    }
    
    func codeSliderValueChanged(sender:UISlider){
        //此方法設計由上面註釋起來的滑桿觸發
        print(Int(sender.value))
    }
}

