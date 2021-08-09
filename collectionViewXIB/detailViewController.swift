//
//  detailViewController.swift
//  collectionViewXIB
//
//  Created by Macbook on 08/08/2021.
//

import UIKit

class detailViewController: UIViewController {
    var myPerson: Person?

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = myPerson?.profileImage
        nameLbl.text = myPerson?.fName
        
    }
    

    

}
