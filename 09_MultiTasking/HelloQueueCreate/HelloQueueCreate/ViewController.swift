//********************************************************************
//********************************************************************
//*************************** Create Queue ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let task1 = {
            for i in 1...5 {
                print("Task1: \(i)")
            }
        }
        let task2 = {
            for i in 1...5 {
                print("Task2: \(i)")
            }
        }
        let createdQueue1 = DispatchQueue(label: "myQueue1")
        let createdQueue2 = DispatchQueue(label: "myQueue2")
        createdQueue1.async(execute: task1)
        createdQueue2.async(execute: task2)
    }
}

