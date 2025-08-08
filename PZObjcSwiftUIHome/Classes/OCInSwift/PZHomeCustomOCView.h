//
//  PZHomeCustomOCView.h
//  PZObjcSwiftUIHome
//
//  Created by admin on 2025/8/8.
//

#import <UIKit/UIKit.h>

@interface PZHomeCustomOCView : UIButton

@property(nonatomic, copy) void (^gotoClickedView)(void);

@end
