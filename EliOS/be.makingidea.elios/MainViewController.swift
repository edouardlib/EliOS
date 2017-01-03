//
//  MainViewController.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 29/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: BaseViewController, MainProtocol {
    
    //
    // Properties
    //
    
    private let mPresenter = MainPresenter()
    
    //
    // Binding views
    //
    
    //@IBOutlet weak var label: UILabel! // Example
    //@IBOutlet weak var listView: UITableView! // Example
    
    //
    // Life cycle
    //
    
    override func loadView() {
        Bundle.main.loadNibNamed("MainView", owner: self, options: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mPresenter.attachView(view: self)
        mPresenter.loadData() // Example
    }

    
    //
    // Actions
    //
    
    //@IBAction func onButtonClicked(_ sender: Any) {
        
    //}
    
    
    //
    // View methods implementation
    //
    
    func loadSuccess(){
       // listView.reloadData()
    }
    
    func loadError(error: String){
        
    }
    
}
