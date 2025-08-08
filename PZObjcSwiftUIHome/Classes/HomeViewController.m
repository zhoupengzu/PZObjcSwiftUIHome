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
    self.view.backgroundColor = UIColor.whiteColor;
    UIButton *swiftRootBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [swiftRootBtn setTitle:@"SwiftRootVC" forState:UIControlStateNormal];
    swiftRootBtn.frame = CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width - 2 * 20, 50);
    [swiftRootBtn addTarget:self action:@selector(clickedToShowSwiftRootVC) forControlEvents:UIControlEventTouchUpInside];
    [swiftRootBtn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    swiftRootBtn.layer.cornerRadius = 8;
    swiftRootBtn.layer.borderWidth = 1;
    swiftRootBtn.layer.borderColor = UIColor.grayColor.CGColor;
    swiftRootBtn.layer.masksToBounds = YES;
    [self.view addSubview:swiftRootBtn];
}

- (void)clickedToShowSwiftRootVC {
    UIViewController *createVC = [PZHomeSwiftRootController createSwiftRootVCWithCallback:^{
        NSLog(@"hhhhhh");
    }];
    [self.navigationController pushViewController:createVC animated:YES];
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
