//********************************************************************
//********************************************************************
//******************* ScrollView and PageControl *********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    var codePageControl: UIPageControl!

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //計算出目前滑動的頁數
        let currentPageNumber = Int(round(myScrollView.contentOffset.x / scrollView.frame.size.width))
        //設定pageControl顯示的頁數
        codePageControl.currentPage = currentPageNumber
    }

    func codePageControlAction(sender: UIPageControl) {
        let currentPageNumber = sender.currentPage //得到選取的頁面
        let width = myScrollView.frame.size.width
        //把ScrollView的寬度存在width變數之後，依照目前的頁面算出需要偏離的距離
        let offset = CGPoint(x: width * CGFloat(currentPageNumber), y: 0)
        //讓ScrollView移動到正確的位置
        myScrollView.setContentOffset(offset, animated: true)
    }

    override func viewDidLayoutSubviews() {
        //設定contentSize.width
        myScrollView.contentSize.width = myScrollView.frame.width * 3
        //設定三個畫面的顏色
        let viewColors = [UIColor.red,UIColor.green,UIColor.blue]
        //在ScrollView上加入三個畫面
        for i in 0..<3{
            let oneView = UIView(
                frame: CGRect(
                    x: CGFloat(i) * myScrollView.frame.size.width,
                    y: 0,
                    width: myScrollView.frame.size.width,
                    height: myScrollView.frame.size.height))
            oneView.backgroundColor = viewColors[i]
            myScrollView.addSubview(oneView)
        }
        //設定pageEnable
        myScrollView.isPagingEnabled = true
        //設定bounce
        myScrollView.bounces = false
        
        //建立PageControl
        codePageControl = UIPageControl(frame: CGRect(x: view.frame.size.width/2 - 30, y: view.frame.size.height - 50, width: 60, height: 37))
        //設定PageControl顏色
        codePageControl.pageIndicatorTintColor = UIColor.black
        //設定目前頁面的顏色
        codePageControl.currentPageIndicatorTintColor = UIColor.lightGray
        //設定總頁數
        codePageControl.numberOfPages = 3
        //設定目前的頁數
        codePageControl.currentPage = 0
        //設定改動頁數後要執行的方法
        codePageControl.addTarget(self, action: #selector(ViewController.codePageControlAction(sender:)), for: .valueChanged)
        //把PageControl加到畫面上
        view.addSubview(codePageControl)
    }

}

