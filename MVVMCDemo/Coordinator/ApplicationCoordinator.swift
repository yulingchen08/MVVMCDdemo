//
//  ApplicationCoordinator.swift
//  MVVMCDemo
//
//  Created by Eric Chen 陳鈺翎 on 2021/3/13.
//

import UIKit


class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UINavigationController
    let firstCoordinator: FirstCoordinator
    
    init(window: UIWindow) {
        self.window = window        
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        firstCoordinator = FirstCoordinator(presenter: rootViewController)
    }
    
    
    func start() {
        print("ApplicationCoordinator start")
        window.rootViewController = rootViewController
        firstCoordinator.start()
        window.makeKeyAndVisible()
    }
}
