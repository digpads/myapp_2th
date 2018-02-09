//
//  ViewController.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/7.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self txtplug];
    [self txt2plug];
    [self txtbox];
}

- (void)txtbox {
    UIView *box = [[UIView alloc] init];
    [self.view addSubview:box];
    box.backgroundColor = [UIColor lightGrayColor];
    [box mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.bottom.mas_equalTo(-10);
    }];
    
    NSString *val = @"第三款九分裤，第三方库；水淀粉的身份看来是江东父老，文科楼居然为了看地方看的身份；";
    UILabel *txt = [[UILabel alloc] init];
    [box addSubview:txt];
    txt.textColor = [UIColor whiteColor];
    txt.text = val;
    txt.numberOfLines = 0;
    [txt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(10);
        make.bottom.mas_equalTo(-10);
    }];
}

- (void)txtplug {
    NSString *text = @"Masonry是一个轻量级的布局框架与更好的包装AutoLayout语法。Masonry有它自己的布局方式，描述NSLayoutConstraints使布局代码更简洁易读。Masonry支持iOS和Mac OS X。Masonry github 地址:https://github.com/SnapKit/Masonry";
    UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectZero];
    [self.view addSubview:label4];
    label4.textColor = [UIColor yellowColor];
    label4.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.3];
    label4.text = text;
   // label4.preferredMaxLayoutWidth = (self.view.frame.size.width -30.0 * 2);
    
    label4.numberOfLines = 0;
    [label4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20.0);
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(self.view).offset(30);
        // 自适应label多行显示时，无需设置label高度
        // make.height.mas_equalTo(40.0);
    }];
}

- (void)txt2plug {
    UITextView *view2 = [[UITextView alloc] init];
    [self.view addSubview:view2];
    view2.textColor = [UIColor grayColor];
    view2.textContainerInset = UIEdgeInsetsMake(10, 10, 10, 10);
    view2.backgroundColor = [UIColor redColor];
    view2.text = @"是一个轻量级的布局框架与更好的包装AutoLayout语法。Masonry有它自己的布局方式，描述NSLayoutConstraints使布局代码更简洁易读。Masonry支持iOS和Mac OS X。Masonry github 地址";
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20.0);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(60);
        make.top.mas_equalTo(self.view).offset(60);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
