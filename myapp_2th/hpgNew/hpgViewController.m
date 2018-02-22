//
//  hpgViewController.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/12.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "hpgViewController.h"
#import "Masonry.h"

@interface hpgViewController ()

@end

@implementation hpgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
     [self box];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        hpgViewController *vc = [[hpgViewController alloc] init];
//        [self.navigationController pushViewController:vc animated:YES];
//    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
   
}
- (void)box {
    UILabel *tit = [UILabel new];
    [self.view addSubview:tit];
    tit.text = @"ahh";
    tit.font = [UIFont boldSystemFontOfSize:16.0];
    tit.textColor = [UIColor blackColor];
    [tit mas_makeConstraints:^(MASConstraintMaker *make) {
       // make.center.mas_equalTo(0);
        make.top.mas_equalTo(57);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
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
