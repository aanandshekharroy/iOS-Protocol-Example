//
//  SendingVC.swift
//  Protocols
//
//  Created by Rashi Karanpuria on 09/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import UIKit
protocol DataSentDelegate{
    func userDidEnterText(data:String)
}
class SendingVC: UIViewController {
    
    @IBOutlet weak var textLabel: UITextField!
    
    var delegate:DataSentDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        if(delegate != nil){
            print("delegate not null")
            if( textLabel.text != nil){
                let data = textLabel.text!
               print("print not null")
                delegate?.userDidEnterText(data: data)
                dismiss(animated: true, completion: nil)
            }
        }else{
            print(" delegate null")
            
        }
    }
    

}
