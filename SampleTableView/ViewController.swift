//
//  ViewController.swift
//  SampleTableView
//
//  Created by Prasanna Venkatesh on 16/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var arr = ["SRK", "RK" , "AK" , "VJ"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

         return arr.count
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
         cell.textLabel?.text = arr[indexPath.row]
         return cell
     }
}


