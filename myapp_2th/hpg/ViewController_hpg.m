//
//  ViewController_hpg.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/11.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "ViewController_hpg.h"
#import "Masonry.h"
@interface ViewController_hpg ()

@end

@implementation ViewController_hpg

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self lay1th];
}

- (void)lay1th {
    UIView *box1th = [UIView new];
    [self.view addSubview:box1th];
    [box1th mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(30);
        make.left.mas_equalTo(16);
        make.right.mas_equalTo(-16);
    }];
    
    NSString *name = @"HI,Cherry桃乐丝";
    UILabel *tit = [UILabel new];
    [box1th addSubview:tit];
    tit.textColor = [UIColor grayColor];
    tit.font = [UIFont boldSystemFontOfSize:24.0];
    tit.text = name;
    [tit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
    }];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
