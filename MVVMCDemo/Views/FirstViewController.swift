//
//  FirstViewController.swift
//  MVVMCDemo
//
//  Created by Eric Chen 陳鈺翎 on 2021/3/13.
//

import UIKit


//create protocols on the viewcontroller for doing delegate to inform coordintor to present other views
protocol FirstViewControllerDelegate: class {
    func toSecond(viewController: FirstViewController)
}

class FirstViewController: UIViewController {
    weak var delegate: FirstViewControllerDelegate?
    var viewModel = FirstViewModel()
    
    
    @IBAction func toSecondAction(_ sender: Any) {
        self.delegate?.toSecond(viewController: self)
    }
    override func viewDidLoad() {
        
    }
}
