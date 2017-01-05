//
//  BaseViewController.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 29/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(BaseViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

}
