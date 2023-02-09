//
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/8/23.
//

import Foundation
import UIKit

class CellConfigTableViewCell: UITableViewCell{
   
    var title : String = "" {
        didSet{
            setNeedsUpdateConfiguration()
        }
    }
    
    var body : String = ""{
        didSet{
            setNeedsUpdateConfiguration()
        }
    }
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        super.updateConfiguration(using: state)
        var contentConfig = MyCellConfiguration().updated(for: state)
        contentConfig.title = title
        contentConfig.body = body
        
        self.contentConfiguration = contentConfig
    }
}

#if DEBUG
import SwiftUI

struct CellConfigTableViewCell_Preview: PreviewProvider{
    static var previews: some View{
        CodeCell().getPreview()
            .previewLayout(.fixed(width: 200, height: 100))
    }
}

#endif
