//
//  ViewController.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/6/23.
//

import UIKit

class DefaultListVC: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
//    var dummyDataList : [DummuyData] = DummuyData.getDummy()
    var dummyDataList : [DummySection] = DummySection.getDummy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
}

// Q1. What is row and indexpath?
// A1. IndexPath = an object that represetns the path to a specific item in a table view or collection view (a list of indexes), stores its section and position.
// indexPath(row : 0, inSection : 2). Just think about nth-d array.
// Row = It is a type alias for Int that represents the index of a specific row in a table view.

extension DefaultListVC : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header " + dummyDataList[section].title
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer " + dummyDataList[section].title
    }
    
    //How many sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return dummyDataList.count
    }
    //how many sectioncs in rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyDataList[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "MyCell")
        let sectionData : DummySection = dummyDataList[indexPath.section]
        let cellData : DummyData = sectionData.rows[indexPath.row]
        cell.textLabel?.text = cellData.title
        cell.detailTextLabel?.numberOfLines = 0
        cell.detailTextLabel?.text = cellData.body
        return cell
    }
}

extension DefaultListVC : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#fileID, #function, #line, "- <#comment#>")
    }
}
