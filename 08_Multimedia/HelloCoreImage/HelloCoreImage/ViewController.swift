//********************************************************************
//********************************************************************
//******************* Cool Filter from Core Image *******************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView! //用來顯示加入效果照片
    var context:CIContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myImage:UIImage = UIImage(named: "image")! //讀入圖檔
        //1.把UIImage 轉型成 CIImage
        let beginImage = CIImage(image: myImage)
        //2.選擇您喜歡的照片濾鏡
        let filter = CIFilter(name: "CISepiaTone")!
        //3.設定要做濾鏡效果的照片
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        //4.設定濾鏡的強弱，可以設一個slider調整強弱值
        //filter.setValue(0.9, forKey: kCIInputIntensityKey)
        //5.開啟一個CIContext
        context = CIContext(options:nil)
        //6.利用CIContext輸出加入效果的照片
        let cgimg = context.createCGImage(filter.outputImage!,
                                from: filter.outputImage!.extent)
        //7.把照片轉型回 UIImage
        let newImage = UIImage(cgImage: cgimg!)
        //8.顯示加入效果的照片
        self.imageView.image = newImage
    }
}

