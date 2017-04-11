//********************************************************************
//********************************************************************
//************************* Page View Controller *********************
//********************************************************************
//********************************************************************

import UIKit

class ContentViewController: UIViewController {
    var nowPageNumber = 0  //紀錄目前顯示的頁數
    @IBOutlet weak var mainImage: UIImageView! //畫面上的ImageView
    
    override func viewDidLoad() {
        //畫面上ImageView的圖片會依照nowPageNumber改變
        mainImage.image = UIImage(named: "\(nowPageNumber)")
    }
}
