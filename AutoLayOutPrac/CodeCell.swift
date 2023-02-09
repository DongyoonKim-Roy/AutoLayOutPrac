//
//  CodeCell.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/8/23.
//

import Foundation
import UIKit

class CodeCell: UITableViewCell{
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Title label"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    lazy var bodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Body label"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        print(#fileID, #function, #line, "- <#comment#>")
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        print(#fileID, #function, #line, "- <#comment#>")
    }
    
    //layout setting
    fileprivate func configureUI(){
        self.backgroundColor = .systemYellow
        self.contentView.addSubview(self.titleLabel)
        
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10), titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10), titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10)])
        
        
        //body label
        self.contentView.addSubview(self.bodyLabel)
        NSLayoutConstraint.activate([bodyLabel.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 10), bodyLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10), bodyLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10), bodyLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10)])
        
    }
}

#if DEBUG
import SwiftUI

struct CodeCell_Previews: PreviewProvider{
    static var previews: some View{
        CodeCell().getPreview()
            .previewLayout(.fixed(width: 200, height: 100))
    }
}

#endif
