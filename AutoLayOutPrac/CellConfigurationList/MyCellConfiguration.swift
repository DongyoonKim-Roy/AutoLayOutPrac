//
//  MyCellConfiguration.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/8/23.
//

import Foundation
import UIKit

//custom cell setting
struct MyCellConfiguration: UIContentConfiguration, Hashable{
    var title: String = ""
    var body: String = ""
    
    //view to show
    func makeContentView() -> UIView & UIContentView {
       return CellConfigurationView(config: self)
    }
    
    func updated(for state: UIConfigurationState) -> MyCellConfiguration {
        if let state = state as? UICellConfigurationState{
            var updatedConfig = self
            
            if state.isSelected{
                updatedConfig.title = "Selected Title" + updatedConfig.title
            }
            return updatedConfig
        }
        return self
    }
}
