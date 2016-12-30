//
//  MainView.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 29/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation

protocol MainProtocol: NSObjectProtocol {
    func loadSuccess()
    func loadError(error: String)
}
