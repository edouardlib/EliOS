//
//  LoginViewController.swift
//  be.makingidea.elios
//
//  Created by Edouard Libion on 30/12/16.
//  Copyright © 2016 Edouard Libion. All rights reserved.
//

import Foundation


class LoginViewController: BaseViewController, LoginProtocol {
    
    //
    // Properties
    //
    
    private let mPresenter = LoginPresenter()
    
    //
    // Binding views
    //

    
    //
    // Life cycle
    //
    
    override func loadView() {
        Bundle.main.loadNibNamed("LoginView", owner: self, options: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mPresenter.attachView(view: self)
        mPresenter.loadData() // Example
    }
    
    
    //
    // Actions
    //
    
    @IBAction func onNavigateButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "showMain", sender: self)
    }

    
    
    
    //
    // View methods implementation
    //
    
    func loginSuccess(){
        
    }
    
    func loginError(error: String){
        
    }}
