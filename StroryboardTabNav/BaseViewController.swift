//
//  BaseViewController.swift
//  StroryboardTabNav
//
//  Created by 杜博 on 2017/2/10.
//  Copyright © 2017年 杜博. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UIGestureRecognizerDelegate,UINavigationControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

        
//        self.navigationController?.delegate = self
//        self.navigationController?.interactivePopGestureRecognizer?.delegate = self


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
