//
//  DetailViewController.swift
//  test-mvc-gaby
//
//  Created by Baxten on 09/02/21.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
    }
}
