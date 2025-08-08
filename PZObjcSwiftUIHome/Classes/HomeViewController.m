//
//  HomeViewController.m
//  PZObjectiveSwiftUI
//
//  Created by admin on 2025/8/7.
//

#import "HomeViewController.h"
#import "PZObjcSwiftUIHome-Swift.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.orangeColor;
    UIView *subView = PZWrapper.wrapperController.view;
    subView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:subView];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
