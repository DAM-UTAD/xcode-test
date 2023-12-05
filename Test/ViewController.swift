//
//  ViewController.swift
//  Test
//
//  Created by Andrei Marin on 5/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    let data = ["Padro", "Ruben", "Carlos", "Sergio"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView!.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "itemcell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemcell", for: indexPath) as! ItemTableViewCell
        
        cell.txt.text = data[indexPath.row]
        return cell
    }
    
}

