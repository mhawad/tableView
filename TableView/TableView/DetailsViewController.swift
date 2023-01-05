//
//  DetailsViewController.swift
//  TableView
//
//  Created by Mirna Helmy on 12/9/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!


    @IBOutlet weak var image: UIImageView!
    
    
    
    var labelDetails = ""
    var imageDetails = UIImage()
    var textDetails = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelDetails
        image.image = imageDetails
        textField.text = textDetails
        view.backgroundColor = .systemTeal

        
        
    }
    

}
