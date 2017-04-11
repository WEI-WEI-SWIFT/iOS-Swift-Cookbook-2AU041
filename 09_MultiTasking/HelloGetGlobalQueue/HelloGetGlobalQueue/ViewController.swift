//********************************************************************
//********************************************************************
//*************************** Global Queue ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let task1 = {
            for i in 1...5{
                print("Task1: \(i)")
            }
        }
        let task2 = {
            for i in 1...5{
                print("Task2: \(i)")
            }
        }
        let globalQueue = DispatchQueue.global()
        globalQueue.async(execute: task1)
        globalQueue.async(execute: task2)
    }

}

