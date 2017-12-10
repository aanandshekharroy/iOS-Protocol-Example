//
//  PrimarySplitViewController.swift
//  Protocols
//
//  Created by Rashi Karanpuria on 09/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//
import UIKit
class PrimarySplitViewController: UISplitViewController,
UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        self.delegate = self
        self.preferredDisplayMode = .allVisible
    }
    
    func splitViewController(
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController: UIViewController,
        onto primaryViewController: UIViewController) -> Bool {
        // Return true to prevent UIKit from applying its default behavior
        return true
    }
}
