//********************************************************************
//********************************************************************
//************************* Page View Controller *********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UIPageViewControllerDataSource{
    
    //增加PageViewController屬性
    var pageViewController:UIPageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //產生PageViewController，存在類別的pageViewController屬性中
        self.pageViewController = self.storyboard?.instantiateViewController(withIdentifier: "pageviewcontroller") as! UIPageViewController
        //設定自己為pageViewController的dataSource，告知要顯示的頁面內容
        self.pageViewController.dataSource = self
        //設定開始的頁面
        let startPage = self.viewControllerAtIndex(index:0) as ContentViewController
        //設定等下要使用的參數，PageViewController需要ViewController陣列
        let viewControllers = [startPage]
        //設定pageViewController
        self.pageViewController.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        //設定pageViewController的大小
        self.pageViewController.view.frame = self.view.frame
        //將PageViewController加入ViewController
        self.addChildViewController(self.pageViewController)
        //將PageViewController的畫面加入ViewController的畫面上
        self.view.addSubview(self.pageViewController.view)
        //確認加入完畢
        self.pageViewController.didMove(toParentViewController: self)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
         viewControllerBefore
            viewController: UIViewController) -> UIViewController? {
        //設定上一頁要顯示的內容
        //先得到目前的ViewController，
        let vc = viewController as! ContentViewController
        //得到目前頁數
        var index = vc.nowPageNumber as Int
        //如果目前的頁數等於零或是找不到，就不做任何處理，return結束
        if index == 0 || index == NSNotFound{
            return nil
        }
        //如果不是上面的情況，就把頁面減1
        index -= 1
        //回傳上一頁的內容
        return self.viewControllerAtIndex(index: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
         viewControllerAfter
            viewController: UIViewController) -> UIViewController? {
        //設定下一頁要顯示的內容
        //先得到目前的ViewController，
        let vc = viewController as! ContentViewController
        //得到目前頁數
        var index = vc.nowPageNumber
        //如果目前的頁數是找不到，就不做任何處理，return結束
        if index == NSNotFound {
            return nil
        }
        //如果不是上面的情況，就把頁面加1
        index += 1
        //如果頁數大於所有的頁數3，就不做任何處理，return結束
        if index >= 3{
            return nil
        }
        ////如果不是上面的情況，就回傳下一頁的內容
        return self.viewControllerAtIndex(index: index)
    }
    
    func viewControllerAtIndex(index:Int) -> ContentViewController{
        //呼叫這個方法，參數給了頁數index，
        //就會回傳顯示該頁內容的ContentViewController
        //先使用Storyboard產生ContentViewController
        let vc =
            self.storyboard?.instantiateViewController(
                withIdentifier: "maincontentviewcontroller") as! ContentViewController
        //設定該ContentViewController的nowPageNumber，就可以顯示正確內容
        vc.nowPageNumber = index
        //回傳顯示該頁內容的ContentViewController
        return vc
    }
}

