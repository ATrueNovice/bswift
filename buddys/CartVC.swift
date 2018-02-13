//
//  CartVC.swift
//  buddys
//
//  Created by HSI on 2/12/18.
//  Copyright © 2018 HSI. All rights reserved.
//

import UIKit

class CartVC: ViewController {
    
    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }

}

extension CartVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartItemCell", for: indexPath)
        return cell
    }
}


