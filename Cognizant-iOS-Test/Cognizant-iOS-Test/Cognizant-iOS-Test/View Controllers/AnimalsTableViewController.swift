//
//  animalsTableViewController.swift
//  Cognizant-iOS-Test
//
//  Created by Joel James on 19/05/2021.
//

import UIKit

class AnimalTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //declare the tableview
    var animalTableView:UITableView = UITableView()
    
    //set the array of animals for the table
    let animalArray = [" 🦁 Lion", " 🐶 Dog", " 🐷 Pig", " 🐵 Monkey", " 🐭 Mouse", " 🐨 Koala"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // set animal table view size
        animalTableView.frame = CGRect(x: 10, y: 10, width: view.frame.width-20, height: view.frame.height-200)
        
        self.view.addSubview(animalTableView)

        // call table view delegate
        animalTableView.dataSource = self
        animalTableView.delegate = self

    }

    // call table view delegate function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // numbers of row in table view
        return animalArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // create a new cell if needed or reuse an old one
    var cell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cellID")
        }
        if self.animalArray.count > 0 {
            cell?.textLabel!.text = self.animalArray[indexPath.row]
        }
        cell?.textLabel?.numberOfLines = 0

        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 50.0
    }
   }
