//********************************************************************
//********************************************************************
//*********************** Navigation Controller **********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    //**************** 第一種方法 **********************
    @IBAction func buttonPressed(_ sender: UIBarButtonItem) {
        //找到Main.storyboard
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //找到StoryboardID為yellowView的UIViewController
        let yellowViewController = mainStoryboard.instantiateViewController(withIdentifier: "yellowView")
        //用Navigation Controller推出黃色底色的ViewController
        self.navigationController?.pushViewController(yellowViewController, animated: true)
    }
 
    /**************** 第二種方法 **********************
    @IBAction func buttonPressed(sender: UIBarButtonItem) {
        //執行identifier為"gotoYellowView"的Segue，轉換場景
        self.performSegue(withIdentifier: "gotoYellowView", sender: nil)
    }
    */
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

