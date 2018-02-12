//
//  UIView_hpg.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/11.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "UIView_hpg.h"
#import "UIView_banner_active.h"
#import "UIView_nv.h"
#import "Masonry.h"

@implementation UIView_hpg

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init {
    self = [super init];
    if(self){
        [self lay1th];
        [self lay2th];
        [self nv];
    } return self;
    
}



- (void)nv {
    UIView_nv *nv = [UIView_nv new];
    [self addSubview:nv];
    [nv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(206+15);
        make.left.mas_equalTo(0);
    }];
}

- (void)lay2th {
    UIImageView *line = [UIImageView new];
    line.image = [UIImage imageNamed:@"line"];
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(200);
        make.left.mas_equalTo(-16);
    }];
    
    
    UIView_banner_active *bannerBox = [UIView_banner_active new];
    [self addSubview:bannerBox];
    [bannerBox mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(90);
        make.left.mas_equalTo(0);
        make.right.mas_equalTo(-16);
    }];
}

- (void)lay1th {

    NSString *name = @"HI,Cherry桃乐丝";
    UILabel *tit = [UILabel new];
    [self addSubview:tit];
    tit.textColor = [UIColor blackColor];
    tit.font = [UIFont boldSystemFontOfSize:27.0];
    tit.text = name;
    [tit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
    }];
    
    NSString *name_msg = @"选择备婚阶段，定制你的婚礼购清单";
    UILabel *msg = [UILabel new];
    [self addSubview:msg];
    msg.text = name_msg;
    msg.font = [UIFont boldSystemFontOfSize:16.0];
    msg.textColor = [UIColor grayColor];
    [msg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(tit.mas_bottom).offset(3);
        make.left.mas_equalTo(0);
    }];
    
    UIImageView *fd = [UIImageView new];
    fd.image = [UIImage imageNamed:@"fd"];
    [self addSubview:fd];
    [fd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(6);
        make.right.mas_equalTo(-36);
    }];
    
    UIImageView *msgicon= [UIImageView new];
    msgicon.image = [UIImage imageNamed:@"msg"];
    [self addSubview:msgicon];
    [msgicon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(7);
        make.right.mas_equalTo(0);
    }];
    
}

@end
























