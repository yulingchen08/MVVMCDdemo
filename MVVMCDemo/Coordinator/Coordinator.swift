//
//  Coordinator.swift
//  MVVMCDemo
//
//  Created by Eric Chen 陳鈺翎 on 2021/3/13.
//

import Foundation




protocol Coordinator {
    
    //start where let coordinators create their own viewcontrollers, view models.... and present them.
    func start()
}
