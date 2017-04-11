//********************************************************************
//********************************************************************
//***************** Download Pics Asynchronously  ********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController{
    let imageArray = [
    "http://appsgaga.com/IOSBOOK/GCDDemo/1.jpg",
    "http://appsgaga.com/IOSBOOK/GCDDemo/2.jpg",
    "http://appsgaga.com/IOSBOOK/GCDDemo/3.jpg",
    "http://appsgaga.com/IOSBOOK/GCDDemo/4.jpg"]
    
    @IBOutlet weak var myImageView1: UIImageView!
    @IBOutlet weak var myImageView2: UIImageView!
    @IBOutlet weak var myImageView3: UIImageView!
    @IBOutlet weak var myImageView4: UIImageView!
    
    func downloadPics(_ url:String) -> UIImage! {
        let data = try? Data(contentsOf: URL(string: url)!)
        return UIImage(data: data!)
    }

    @IBAction func startDownload(_ sender: UIBarButtonItem) {
        DispatchQueue.global().async{
            let downloadedImage1 = self.downloadPics(self.imageArray[0])
            let downloadedImage2 = self.downloadPics(self.imageArray[1])
            let downloadedImage3 = self.downloadPics(self.imageArray[2])
            let downloadedImage4 = self.downloadPics(self.imageArray[3])
            DispatchQueue.main.async{
                self.myImageView1.image = downloadedImage1
                self.myImageView2.image = downloadedImage2
                self.myImageView3.image = downloadedImage3
                self.myImageView4.image = downloadedImage4
            }
        }
        
        /*
        // ----- 使用此方法下載整個畫面會卡住 -----
        let downloadedImage1 = downloadPics(imageArray[0])
        let downloadedImage2 = downloadPics(imageArray[1])
        let downloadedImage3 = downloadPics(imageArray[2])
        let downloadedImage4 = downloadPics(imageArray[3])
        myImageView1.image = downloadedImage1
        myImageView2.image = downloadedImage2
        myImageView3.image = downloadedImage3
        myImageView4.image = downloadedImage4
        
        //----- 使用循序佇列下載圖片 -----
        let createdQueue1 = DispatchQueue(label: "myQueue1")
        let createdQueue2 = DispatchQueue(label: "myQueue2")
        let createdQueue3 = DispatchQueue(label: "myQueue3")
        let createdQueue4 = DispatchQueue(label: "myQueue4")
        createdQueue1.async {
            let downloadedImage1 = self.downloadPics(self.imageArray[0])
            DispatchQueue.main.async {
                self.myImageView1.image = downloadedImage1
            }
        }
        createdQueue2.async {
            let downloadedImage2 = self.downloadPics(self.imageArray[1])
            DispatchQueue.main.async {
                self.myImageView2.image = downloadedImage2
            }
        }
        createdQueue3.async {
            let downloadedImage3 = self.downloadPics(self.imageArray[2])
            DispatchQueue.main.async {
                self.myImageView3.image = downloadedImage3
            }
        }
        createdQueue4.async {
            let downloadedImage4 = self.downloadPics(self.imageArray[3])
            DispatchQueue.main.async {
                self.myImageView4.image = downloadedImage4
            }
        }
        */
    }

}

