//********************************************************************
//********************************************************************
//************************ Split View Controller *********************
//********************************************************************
//********************************************************************

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel! //畫面中的文字

    var detailItem: AnyObject? {
        didSet {
            //此屬性一旦被重新設定，就呼叫configueView方法
            self.configureView()
        }
    }

    func configureView() {
        // 把畫面中的文字，改成傳進來的文字
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
}