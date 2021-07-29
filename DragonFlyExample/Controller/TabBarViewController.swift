//
//  TabBarViewController.swift
//
//  Created by Beatriz Carlos on 29/07/21.
//  Copyright © 2020 Alley Pereira. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let mainVC = ColorsViewController()
        let colorsViewController = UINavigationController(rootViewController: mainVC)
        colorsViewController.setNavigationBarHidden(true, animated: false)
        mainVC.tabBarItem = UITabBarItem(title: "Cores", image: UIImage(named: "colors")?.withRenderingMode(.alwaysOriginal), tag: 0)
        
        let fontsViewController = FontsViewController()
        let fontsNavigationController = UINavigationController(rootViewController: fontsViewController)
        fontsNavigationController.setNavigationBarHidden(true, animated: false)
        fontsViewController.tabBarItem = UITabBarItem(title: "Fontes", image: UIImage(named: "fonts")?.withRenderingMode(.alwaysOriginal), tag: 1)
        
        let tabBarList = [colorsViewController, fontsNavigationController]
        
        viewControllers = tabBarList
        
        tabBar.backgroundColor = .white
        tabBar.barTintColor = .white
        tabBar.tintColor = .black
        
    }
}
