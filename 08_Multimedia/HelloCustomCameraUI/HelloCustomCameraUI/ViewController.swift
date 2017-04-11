//********************************************************************
//********************************************************************
//************************ Custom Camera UI **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    //1.把UIImagePickerController類別的變數在此宣告
    var imagePicker: UIImagePickerController?
    @IBAction func takeAPicture(_ sender: UIButton) {
        //2.檢查是否有相機可以使用
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            //3.生成負責照相的 UIImagePickerController，存進宣告的屬性中
            imagePicker = UIImagePickerController()
            //4.設定來源為相機
            imagePicker?.sourceType = .camera
            //5.把ViewController設定給UIImagePickerController的delegate
            imagePicker?.delegate = self
            //6.移除原有的照相機控制介面
            imagePicker?.showsCameraControls = false
            //7.計算除了UIImagePickerController以外，下面的高度
            let controllerHeight = UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.width * 1.333333
            //8.製作自己的照相機按鈕，設定按下去會執行snap方法
            let myYellowCameraButton = UIButton(frame:
                CGRect(x: UIScreen.main.bounds.size.width/2 - 95/2,
                        y: UIScreen.main.bounds.size.height - controllerHeight/2 - 95/2,
            width: 95,height: 95))
            myYellowCameraButton.setImage(UIImage(named: "TakePhotoButton"),
                for: UIControlState())
            myYellowCameraButton.setImage(UIImage(named: "TakePhotoButtonPressed"),for: .highlighted)
            myYellowCameraButton.addTarget(self, action: #selector(ViewController.snap), for: .touchUpInside)
            //9.把按鈕加到UIImagePickerController的畫面上
            imagePicker?.view.addSubview(myYellowCameraButton)
            
            //10.推出UIImagePickerController
            if imagePicker != nil{
                present(imagePicker!,
                    animated: true, completion: nil)
            }
        }
    }
    
    func snap(){
        //11.要照相的時候，只要使用UIImagePickerController的takePicture方法就好了
        imagePicker?.takePicture()
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : Any]) {
            //12.利用UIImagePickerControllerOriginalImage的key
            //從info拿到照下的圖片，也可以用UIImageView秀出這個 UIImage
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            //13.把照片存檔到相簿
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            //14.把照相的畫面收回
            dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        //15.照相過程中如果按了cancel，則把照相畫面收回
        dismiss(animated: true, completion: nil)
    }
}

