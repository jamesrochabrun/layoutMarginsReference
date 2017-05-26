//
//  ViewController.swift
//  toplayout
//
//  Created by James Rochabrun on 5/26/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blueView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .red
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        view.addSubview(blueView)
        setUpViews()
    }
    
    func setUpViews() {
        
        NSLayoutConstraint.activate([
            
            //toplayoutguide.topAnchor: goes to the top of the screen
            //toplayoutguide.bottomanchor: goes to the bottom of the navigation bar
            
            //bottomlayoutguide.topanchor: goes until the top anchor of the tab bar
           // bottomLayoutGuide.bottomAnchor: goes to the bottom of the screen
            
            
            blueView.topAnchor.constraint(equalTo: topLayoutGuide.topAnchor),
            blueView.leftAnchor.constraint(equalTo: view.leftAnchor),
            blueView.rightAnchor.constraint(equalTo: view.rightAnchor),
            blueView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.bottomAnchor),
            ])
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print("Full view frame = \(self.view.frame)")
        print("blueView frame = \(self.blueView.frame)")
    }
    

}

class CustomTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.layer.borderWidth = 3.0
        tabBar.isTranslucent = true
        
        let vc = ViewController()
        let navigationVC = UINavigationController(rootViewController: vc)
        navigationVC.tabBarItem.title = "Nearby"
        
        viewControllers = [navigationVC]
    }
    
}
