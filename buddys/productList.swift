//
//  productList.swift
//  buddys
//
//  Created by HSI on 2/11/18.
//  Copyright © 2018 HSI. All rights reserved.
//

import UIKit

class productList: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        
        return cell
    }


}
