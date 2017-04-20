//********************************************************************
//********************************************************************
//****************************** Popover *****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showPopover", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showPopover"{
            let vc = segue.destination
            vc.preferredContentSize = CGSize(width: 200, height: 100) //設定浮動畫面大小
            //取得 popoverPresentationController
            let controller = vc.popoverPresentationController
            if controller != nil{
                //把ViewController設定為popover的delegate
                controller?.delegate = self
            }
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none //設定style
    }
    
}

