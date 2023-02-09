//
//  CellConfigurationView.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/8/23.
//

import Foundation
import UIKit

class CellConfigurationView: UIView, UIContentView{
    
    fileprivate var customConfiguration : MyCellConfiguration!
    
    fileprivate func applyConfig(_ newConfiguration: MyCellConfiguration) {
        //connect data and UI
        self.customConfiguration = newConfiguration
        titleLabel.text = newConfiguration.title
        bodyLabel.text = newConfiguration.body
    }
    
    var configuration : UIContentConfiguration{
        get{ customConfiguration }
        set{ if let newConfiguration = newValue as? MyCellConfiguration {
            applyConfig(newConfiguration)
        }}
    }
    
    init(config: MyCellConfiguration){
        super.init(frame: .zero)
        configureUI()
        applyConfig(config)
    }
    
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
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        print(#fileID, #function, #line, "- <#comment#>")
    }
    
    //layout setting
    fileprivate func configureUI(){
        self.backgroundColor = .systemBlue
        self.addSubview(self.titleLabel)
        
        NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10), titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10), titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)])
        
        
        //body label
        self.addSubview(self.bodyLabel)
        NSLayoutConstraint.activate([bodyLabel.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 10), bodyLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10), bodyLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10), bodyLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)])
    }
}

#if DEBUG
import SwiftUI

struct CellConfigurationView_Previews: PreviewProvider{
    static var previews: some View{
        CellConfigurationView(config: MyCellConfiguration(title: "WorkHard", body: "PlayHard"))
       .getPreview()
            .previewLayout(.fixed(width: 200, height: 100))
    }
}

#endif
