//
//  ViewController.swift
//  QuickVideo
//
//  Created by GTCC on 10/8/15.
//  Copyright © 2015 ATCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        print(searchBar.text)
        searchBar.resignFirstResponder()
        
        let controller = storyboard?.instantiateViewControllerWithIdentifier("VideoDetail") as! VideoDetail
        controller.searchContent = searchBar.text!
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

