//
//  BaseNavigationController.swift
//  StroryboardTabNav
//
//  Created by 杜博 on 2017/2/9.
//  Copyright © 2017年 杜博. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController,UINavigationControllerDelegate {

    var popDelegate: UIGestureRecognizerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.popDelegate = self.interactivePopGestureRecognizer?.delegate
        self.delegate = self
    }
    

    func backBarItem() -> UIBarButtonItem {
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 0, y: 0, width: 50, height: 44)
        btn.addTarget(self, action: #selector(popToPre), for: .touchUpInside)
        btn.setImage(UIImage.init(named: "back"), for: .normal)
        btn.imageEdgeInsets = .init(top: 0, left: -30, bottom: 0, right: 0)
        return UIBarButtonItem.init(customView: btn)
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {

            let leftNavItem = self.backBarItem()
            viewController.navigationItem.leftBarButtonItem = leftNavItem
            
        viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
     func popToPre()
    {
        self.popViewController(animated: true)
    }

    
    //UINavigationControllerDelegate方法
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        //实现滑动返回功能
        //清空滑动返回手势的代理就能实现
        if viewController == self.viewControllers[0] {
            self.interactivePopGestureRecognizer!.delegate = self.popDelegate
        }
        else {
            self.interactivePopGestureRecognizer!.delegate = nil
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
