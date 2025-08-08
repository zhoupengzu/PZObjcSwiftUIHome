//
//  PZObjcSwiftUIHomeGlassEffect.swift
//  PZObjcSwiftUIHome
//
//  Created by admin on 2025/8/8.
//

import SwiftUI
import UIKit

@available(iOS 26.0, *)
struct PZObjcSwiftUIHomeGlassEffect: View {
    @State private var isExpanded: Bool = false
    @Namespace private var namespace


    var body: some View {
        ZStack {
            Image("vc_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 40.0) {
                GlassEffectContainer(spacing: 40.0) {
                    HStack(spacing: 40.0) {
                        Image(systemName: "scribble.variable")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 36))
                            .glassEffect()
                            .glassEffectID("pencil", in: namespace)
                        
                        if isExpanded {
                            Image(systemName: "eraser.fill")
                                .frame(width: 80.0, height: 80.0)
                                .font(.system(size: 36))
                                .glassEffect()
                                .glassEffectID("eraser", in: namespace)
                        }
                    }
                }
                Button("Toggle") {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
                .buttonStyle(.glass)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}

@objcMembers
@objc(PZWrapper)
public class PZWrapperController:NSObject {
    public static func wrapperController() -> UIViewController {
        if #available(iOS 26.0, *) {
            return UIHostingController(rootView: PZObjcSwiftUIHomeGlassEffect())
        } else {
            // Fallback on earlier versions
            return UIViewController.init()
        }
    }
}

#Preview {
    if #available(iOS 26.0, *) {
        PZObjcSwiftUIHomeGlassEffect()
    } else {
        // Fallback on earlier versions
    }
}
