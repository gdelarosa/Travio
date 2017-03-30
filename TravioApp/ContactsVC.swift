//
//  HomeVC.swift
//  Travio
//
//  Created by Gina De La Rosa on 2/2/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

class ContactsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    // 911
    @IBAction func call911(_ sender: Any) {
        if let url = URL(string: "tel://\(911 as Int64)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
   
    // See somehing say something
    @IBAction func seeSay(_ sender: Any) {
        if let url = URL(string: "tel://\(13139652323 as Int64)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
   
    // AutoTheft
    @IBAction func autoTheft(_ sender: Any) {
        if let url = URL(string: "tel://\(18002424328 as Int64)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    //Report Crime
    @IBAction func reportCrime(_ sender: Any) {
        if let url = URL(string: "tel://\(13132674600 as Int64)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    //Street Light
    @IBAction func streetLight(_ sender: Any) {
        if let url = URL(string: "tel://\(13133248290 as Int64)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    //Traffic Light
    @IBAction func trafficLight(_ sender: Any) {
        if let url = URL(string: "tel://\(13132678140 as Int64)") {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:])
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
}
