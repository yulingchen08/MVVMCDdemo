//
//  SecondViewController.swift
//  MVVMCDemo
//
//  Created by Eric Chen 陳鈺翎 on 2021/3/13.
//

import UIKit

protocol SecondViewCnotrollerDelegate: class {
    func toThird(_ viewController: UIViewController)
}

class SecondViewController: UIViewController {
    weak var delegate: SecondViewCnotrollerDelegate?
    var viewModel = SecondViewModel()
    override func viewDidLoad() {
        
    }
}
