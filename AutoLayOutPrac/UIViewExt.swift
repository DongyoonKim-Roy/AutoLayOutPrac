//
//  UIViewExt.swift
//  AutoLayOutPrac
//
//  Created by Roy's Saxy MacBook on 2/8/23.
//

import Foundation
import UIKit

#if DEBUG
import SwiftUI

extension UIView {
    
    private struct ViewRepresentable : UIViewRepresentable {
        
        let uiview : UIView
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
        }
        
        func makeUIView(context: Context) -> some UIView {
            return uiview
        }
        
    }
    func getPreview() -> some View {
        ViewRepresentable(uiview: self)
    }
}


#endif
