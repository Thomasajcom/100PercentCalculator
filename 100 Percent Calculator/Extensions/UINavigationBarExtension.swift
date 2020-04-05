//
//  UINavigationBarExtension.swift
//  100 Percent Calculator
//
//  Created by Thomas Andre Johansen on 05/04/2020.
//  Copyright © 2020 Appkokeriet. All rights reserved.
//

import Foundation
import UIKit


extension UINavigationController {
    override open func viewDidLoad() {
        let navBarAppearance = UINavigationBarAppearance()
        //navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = UIColor.init(red: 38/255.0, green: 0/255.0, blue: 255/255.0, alpha: 1.0)
        navBarAppearance.shadowColor = .clear
        navigationBar.standardAppearance = navBarAppearance
        navigationBar.scrollEdgeAppearance = navBarAppearance
        navigationBar.tintColor = .white
    }
}
