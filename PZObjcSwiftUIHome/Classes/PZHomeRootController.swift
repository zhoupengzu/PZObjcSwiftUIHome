//
//  PZHomeRootController.swift
//  PZObjcSwiftUIHome
//
//  Created by admin on 2025/8/8.
//

import SwiftUI

@available(iOS 14.0, *)
struct PZHomeRootController: View {
    @Namespace private var ns
    var gotoCallBack:(()->())?
    var body: some View {
        if #available(iOS 26.0, *) {
            VStack {
                GlassEffectContainer(spacing: 10) {
                    HStack(spacing:30) {
                        PZHomeCustomOCInSwiftView()
                            .frame(width: 80, height: 80)
                            .glassEffect(.regular.interactive())
                            .glassEffectUnion(id: "1", namespace: ns)
                            .backgroundExtensionEffect()
                        PZHomeCustomOCInSwiftView()
                            .frame(width: 80, height: 80)
                            .glassEffect(.regular.interactive())
                            .glassEffectUnion(id: "1", namespace: ns)
                            .backgroundExtensionEffect()
                        PZHomeCustomOCInSwiftView()
                            .frame(width: 80, height: 80)
                            .glassEffect()
                            .glassEffectUnion(id: "3", namespace: ns)
                            .backgroundExtensionEffect()
                    }
                }
                ScrollView {
                            Color.red.frame(height: 300)
                            Color.yellow.frame(height: 300)
                            Color.green.frame(height: 300)
                            Color.black.frame(height: 300)
                            Color.orange.frame(height: 300)
                            Color.blue.frame(height: 300)
                            Color.brown.frame(height: 300)
                        }
                        .safeAreaInset(edge: .bottom) {
                            GlassEffectContainer(spacing:10) {
                                HStack(spacing:20) {
                                    Image(systemName: "pencil")
                                        .font(.title)
                                        .frame(width: 40, height: 40)
                                        .padding()
                                        .glassEffect(.regular.interactive())
                                        .glassEffectUnion(id: "1", namespace: ns)
                                    
                                    Image(systemName: "eraser")
                                        .font(.title)
                                        .frame(width: 40, height: 40)
                                        .padding()
                                        .glassEffect(.regular.interactive())
                                        .glassEffectUnion(id: "1", namespace: ns)
                                }
                            }
                        }
            }
//            PZHomeCustomOCInSwiftView(gotoCallBack: {
//                gotoCallBack?()
//            })
//                .frame(width: 200, height: 200)
////                .background(
////                    LinearGradient(colors: [.red, .orange, .green], startPoint: .top, endPoint: .bottom)
////                )
//                .glassEffect(.regular.interactive())
            
        } else {
            // Fallback on earlier versions
        }
    }
}

@objcMembers
public class PZHomeSwiftRootController: NSObject {
    public static func createSwiftRootVC(callback:@escaping()->Void) -> UIViewController {
        if #available(iOS 14.0, *) {
            var vc = PZHomeRootController()
            vc.gotoCallBack = {
                callback()
            }
            return UIHostingController(rootView: vc)
        }
        return UIViewController()
    }
}

#Preview {
    if #available(iOS 14.0, *) {
        PZHomeRootController()
    } else {
        // Fallback on earlier versions
    }
}
