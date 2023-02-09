//
//  CodeListVC.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/6/23.
//

import Foundation
import UIKit

class CodeListVC: UIViewController{
    @IBOutlet weak var myTableView: UITableView!
    var dummyDataList : [DummySection] = DummySection.getDummy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "- <#comment#>")
        configTableView()
    }
    
    fileprivate func configTableView(){
        self.myTableView.register(CodeCell.self, forCellReuseIdentifier: "CodeCell")
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
    }
}


extension CodeListVC : UITableViewDataSource{
    
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CodeCell", for: indexPath) as? CodeCell else{
            return UITableViewCell()
        }
        
        let sectionData : DummySection = dummyDataList[indexPath.section]
        let cellData : DummyData = sectionData.rows[indexPath.row]
        cell.titleLabel.text = cellData.title
        cell.bodyLabel.text = cellData.body
        return cell
    }
}

extension CodeListVC : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#fileID, #function, #line, "- <#comment#>")
    }
}
