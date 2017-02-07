//
//  ViewController.swift
//  Time Table
//
//  Created by Lilit Avetisyan on 1/13/17.
//  Copyright © 2017 Lil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var table: UITableView!
    @IBOutlet var slider: UISlider!
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        
        table.reloadData()
        
    }
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(Int((slider.value*20))*(indexPath.row+1))
        return cell
    }
    

    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

