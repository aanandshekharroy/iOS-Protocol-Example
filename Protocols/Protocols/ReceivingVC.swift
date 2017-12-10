//
//  ViewController.swift
//  Protocols
//
//  Created by Rashi Karanpuria on 09/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController,DataSentDelegate {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let navigarionController = navigationController{
//            navigationItem.rightBarButtonItem =
        }
    }
    
    
    func userDidEnterText(data: String) {
        textLabel.text = data
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendingVC"{
            if let navigationController = segue.destination as? UINavigationController{
                if let detailController = navigationController.visibleViewController as? SendingVC{
                    detailController.delegate = self
                    detailController.navigationItem.title = "Detail"
                }
            }
        }
    }
}

