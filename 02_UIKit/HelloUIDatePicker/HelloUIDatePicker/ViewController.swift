//********************************************************************
//********************************************************************
//**************************** Date Picker ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    var codeDatePicker:UIDatePicker! //稍後要用程式碼產生的 UIDatePicker
    
    @IBAction func myDatePickerAction(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd EE HH:mm"
        print(dateFormatter.string(from: myDatePicker.date))
    }
    

    /*用程式碼來生成UIDatePicker
    override func viewDidAppear(_ animated: Bool) {
        //生成UIDatePicker
        codeDatePicker = UIDatePicker(frame: CGRect(x: 0, y: view.frame.height-216, width: view.frame.width, height: 216))
        //設定選取模式
        codeDatePicker.datePickerMode = .dateAndTime
        //設定時間間隔
        codeDatePicker.minuteInterval = 30
        //設定使用者選取時間後會執行的方法
        codeDatePicker.addTarget(self, action: #selector(ViewController.codeDatePickerAction(sender:)), for: .valueChanged)
        //將DatePicker加入到畫面中
        view.addSubview(codeDatePicker)
    }
    
    func codeDatePickerAction(sender: UIDatePicker) {
        //用程式碼產生的datePicker會執行的方法
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MMMM dd EEEE HH:mm"
        print(dateFormatter.string(from: myDatePicker.date))
    }
    */
}

