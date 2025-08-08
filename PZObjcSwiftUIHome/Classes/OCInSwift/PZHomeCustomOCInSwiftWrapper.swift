//
//  PZHomeCustomOCInSwiftWrapper.swift
//  PZObjcSwiftUIHome
//
//  Created by admin on 2025/8/8.
//

import SwiftUI

struct PZHomeCustomOCInSwiftView:UIViewRepresentable {
    var gotoCallBack:(()->())?
    func makeUIView(context: Context) -> some UIView {
        let view = PZHomeCustomOCView()
        view.gotoClickedView = {
            gotoCallBack?()
        }
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
