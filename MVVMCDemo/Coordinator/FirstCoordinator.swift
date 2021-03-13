//
//  FirstCoordinator.swift
//  MVVMCDemo
//
//  Created by Eric Chen 陳鈺翎 on 2021/3/13.
//

import UIKit



class FirstCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        print("FirstCoordinator start")
        let firstViewController = FirstViewController(nibName: "FirstViewController", bundle: nil)
        firstViewController.delegate = self
        let viewModel = FirstViewModel()
        firstViewController.viewModel = viewModel
        //pushViewController, will create back button on the upper left screen
        presenter.pushViewController(firstViewController, animated: true)
    }
}

//Protocol implement where to create next viewcontroller's coordinator and do start()
extension FirstCoordinator: FirstViewControllerDelegate {
    func toSecond(viewController: FirstViewController) {
        print("Do toSecond")
        let secondCoordinator = SecondCoordinator(presenter: presenter)
        secondCoordinator.start()
    }
}
