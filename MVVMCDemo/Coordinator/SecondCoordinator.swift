//
//  SecondCoordinator.swift
//  MVVMCDemo
//
//  Created by Eric Chen 陳鈺翎 on 2021/3/14.
//

import UIKit


class SecondCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        secondViewController.delegate = self
        let viewModel = SecondViewModel()
        secondViewController.viewModel = viewModel
        self.presenter.pushViewController(secondViewController, animated: true)
    }
}



extension SecondCoordinator: SecondViewCnotrollerDelegate {
    func toThird(_ viewController: UIViewController) {
        
    }
}
