//
//  ViewController.swift
//  Table View App
//
//  Created by Tzu ning Lo on 2024/7/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableViewData = [Model]()
    private let cellIdentifier = "bossPi"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionHeaderTopPadding = 0
        
        self.tableViewData.append(Model(tableViewSections: "Section 0", tableViewRows: ["0","1", "2", "3", "4", "5", "6", "7", "8", "9"]))
        self.tableViewData.append(Model(tableViewSections: "Section 1", tableViewRows: ["0","1", "2", "3", "4"]))
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData[section].tableViewRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else {
            fatalError("bossPi is not found!")
        }
        cell.textLabel?.text = "This is section \(indexPath.section), row \(tableViewData[indexPath.section].tableViewRows[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        cell?.textLabel?.text = tableViewData[section].tableViewSections
        cell?.backgroundColor = .lightGray
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
