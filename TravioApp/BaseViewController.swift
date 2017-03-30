//
//  BaseViewController.swift
//  Places
//
//  Created by Boris Kachulachki on 1/25/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "", style: .plain, target: nil, action: nil)
    }
}
