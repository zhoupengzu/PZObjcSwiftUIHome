//
//  PZHomeCustomOCView.m
//  PZObjcSwiftUIHome
//
//  Created by admin on 2025/8/8.
//

#import "PZHomeCustomOCView.h"

@implementation PZHomeCustomOCView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.userInteractionEnabled = YES;
//        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickedSelfView)];
//        [self addGestureRecognizer:tapGes];
    }
    return self;
}

- (void)clickedSelfView {
    if (self.gotoClickedView) {
        self.gotoClickedView();
    }
}

@end
