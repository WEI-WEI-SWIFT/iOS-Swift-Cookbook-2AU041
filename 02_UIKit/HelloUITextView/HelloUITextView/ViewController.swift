//********************************************************************
//********************************************************************
//**************************** UITextView ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.text = "驢王子\n\n很久很久以前，在歐洲有一個小王國。這個國家的國王和皇后很想要生一個小孩，不過怎麼都生不出來。他們每天都向天祈求，希望能夠生出孩子。\n某日天神出現了，他答應國王和皇后，即將成全他們的願望。\n不久皇后變懷孕了，沒想到生出來的不是小嬰兒，而是頭小驢子..."
        
        /************* 用程式碼產生 UITextView ****************
        //產生UITextView
        let codeTextView = UITextView(frame: CGRect(x: 48, y: 300, width: 356, height: 100))
        //設定顯示文字
        codeTextView.text = "...故事繼續\n國王和皇后繼續祈求天神，可以讓小驢子能夠變成正常的小孩。"
        //設定是否可以編輯
        codeTextView.editable = true
        //設定是否可以選取其中的文字
        codeTextView.selectable = true
        //捨定文字對齊
        codeTextView.textAlignment = .left
        //加入畫面
        view.addSubview(codeTextView)
        */
    }
}

