//
//  ViewController.swift
//  StroryboardTabNav
//
//  Created by 杜博 on 2017/2/9.
//  Copyright © 2017年 杜博. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton.init()
        button.frame = .init(x: 100, y: 100, width: 100, height: 100)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(rootAction), for:.touchUpInside)
        button.backgroundColor = UIColor.red
        
        
    }

    func rootAction()  {
        

        
        
//        UIView.animate(withDuration: 1) {
             let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = mainStoryboard.instantiateViewController(withIdentifier: "tabBarcontroller") as! UITabBarController
            UIApplication.shared.keyWindow?.rootViewController = viewController
//        }
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

