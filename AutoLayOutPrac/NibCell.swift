//
//  NibCell.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/7/23.
//

import Foundation
import UIKit

class NibCell : UITableViewCell{
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#fileID, #function, #line, "-  ")
        self.backgroundColor = .systemBlue
    }
}
