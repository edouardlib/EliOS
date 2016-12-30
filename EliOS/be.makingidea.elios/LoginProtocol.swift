//
//  LoginProtocol.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation

protocol LoginProtocol: NSObjectProtocol {
    func loginSuccess()
    func loginError(error: String)
}
