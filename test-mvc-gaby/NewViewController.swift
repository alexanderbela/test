//
//  NewViewController.swift
//  test-mvc-gaby
//
//  Created by Baxten on 09/02/21.
//

import Foundation
import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var newTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newTableView.delegate = self
        newTableView.dataSource = self
    }
}

extension NewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! NewTableViewCell
        return cell
    }
    
    
}
