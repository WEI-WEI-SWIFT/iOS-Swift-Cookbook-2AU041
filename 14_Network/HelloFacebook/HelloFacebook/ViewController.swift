//********************************************************************
//********************************************************************
//*********************** Facebook / Twitter *************************
//********************************************************************
//********************************************************************

import UIKit
import Social //<--- 要加入這個

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //如果可以使用發文的功能
        //範例是Facebook發文。如果要Twitter發文的話...，
        //請把SLServiceTypeFacebook改成SLServiceTypeTwitter
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook){
            //產生SLComposeViewController實體
            if let fbComposer = SLComposeViewController(forServiceType: SLServiceTypeTwitter){
                //設定預設的文字
                fbComposer.setInitialText("Hello! Post message from my new app!")
                //如果要加入圖片的話，可以用下面的程式碼加入
                //fbComposer.add(<#T##image: UIImage!##UIImage!#>)
                //推出SLComposeViewController
                present(fbComposer, animated: true, completion: nil)
            }
        }else{
            print("無法使用發文功能")
        }
    }
}

