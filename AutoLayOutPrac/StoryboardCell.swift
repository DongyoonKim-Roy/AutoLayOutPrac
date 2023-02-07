//
//  StoryboardCell.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/6/23.
//

import Foundation
import UIKit

class StoryboardCell: UITableViewCell{
    
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        print(#fileID, #function, #line, "- <#comment#>")
    }
}
