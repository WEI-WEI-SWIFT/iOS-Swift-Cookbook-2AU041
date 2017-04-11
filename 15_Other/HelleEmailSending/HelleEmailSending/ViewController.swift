//********************************************************************
//********************************************************************
//**************************** Send Email ****************************
//********************************************************************
//********************************************************************

import UIKit
import MessageUI

class ViewController: UIViewController,
                                MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        if (MFMailComposeViewController.canSendMail()){
            //如果可以執行寄Email的功能的話...
            //設定Email標題
            let emailTitle = "E-mail Test"
            //設定Email預設內容
            let messageBody = "Hello :)"
            //設定收件人信箱，是一個陣列，可以加入多個Email
            let destinationAddress = ["iloveswift@hotmail.com"]
            //產生MFMailComposerController
            let myMailController = MFMailComposeViewController()
            //將ViewController設成MFMailComposerController的屬性
            myMailController.mailComposeDelegate = self
            //加入標題
            myMailController.setSubject(emailTitle)
            //加入內容
            myMailController.setMessageBody(messageBody, isHTML: false)
            //加入收件人信箱
            myMailController.setToRecipients(destinationAddress)
            //推出MFMailComposerController
            self.present(myMailController,
                                       animated: true, completion: nil)
        }
    }

    func mailComposeController(_ controller: MFMailComposeViewController,
       didFinishWith result: MFMailComposeResult, error: Error?) {
        //處理寄出信件後的回應
        switch result{
            case .cancelled:
                print("cancel")         //信件取消的情況
            case .saved:
                print("saved")          //信件儲存的情況
            case .sent:
                print("sent")           //信件寄出的情況
            case .failed:
                print("fail")           //寄信失敗的情況
        }
        //收起MFMailComposerController
        self.dismiss(animated: false, completion: nil)
    }
}

