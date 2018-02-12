//
//  UIView_bigimg.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/12.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "UIView_bigimg.h"
#import "Masonry.h"

@implementation UIView_bigimg

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
        [self bigimg];
        [self bigimg2];
    } return self;
    
}

- (void)bigimg {
    UIImageView *img = [UIImageView new];
    img.image = [UIImage imageNamed:@"t1"];
    [self addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(90);
        make.left.mas_equalTo(0);
        make.width.mas_equalTo(343);
    }];
    
    UIView *mk = [UIView new];
    [self addSubview:mk];
    mk.layer.borderColor = [[UIColor colorWithRed:248/255. green:49/255. blue:48/255. alpha:1.0] CGColor];
    mk.layer.borderWidth = 1;
    mk.layer.cornerRadius = 2;
    [mk mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset(10);
        make.left.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(50,15));
    }];
    
    UILabel *mktxt = [UILabel new];
    [mk addSubview:mktxt];
    mktxt.text = @"婚纱摄影";
    mktxt.font = [UIFont boldSystemFontOfSize:11.0];
    mktxt.textColor =  [UIColor colorWithRed:248/255. green:49/255. blue:48/255. alpha:1.0];
    [mktxt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
    }];
    
    UILabel *mktit = [UILabel new];
    [self addSubview:mktit];
    mktit.textColor = [UIColor blackColor];
    mktit.text = @"旅拍必拍景点套餐，鼓浪屿/厦大/环岛类似的九分裤";
    mktit.font = [UIFont boldSystemFontOfSize:16.0];
    [mktit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset(8);
        make.left.mas_equalTo(mk.mas_right).offset(10);
        make.width.mas_equalTo(img.mas_width).multipliedBy(0.8);
    }];
    
    UILabel *tig = [UILabel new];
    [self addSubview:tig];
    tig.text = @"上城区 | 杭州锐摄影会所";
    tig.font = [UIFont boldSystemFontOfSize:13];
    tig.textColor = [UIColor grayColor];
    [tig mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mk.mas_bottom).offset(6);
        make.left.mas_equalTo(0);
    }];
    
    UILabel *pce = [UILabel new];
    [self addSubview:pce];
    pce.text = @"￥3899";
    pce.font = [UIFont boldSystemFontOfSize:17];
    pce.textColor = [UIColor colorWithRed:248/255. green:49/255. blue:48/255. alpha:1.0];
    [pce mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mk.mas_bottom).offset(3);
        make.right.mas_equalTo(img.mas_right).offset(0);
    }];
    
    
}

- (void)bigimg2 {
    UIImageView *img = [UIImageView new];
    img.image = [UIImage imageNamed:@"t2"];
    [self addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(350);
        make.left.mas_equalTo(0);
        make.width.mas_equalTo(343);
    }];
    
    UIView *mk = [UIView new];
    [self addSubview:mk];
    mk.layer.borderColor = [[UIColor colorWithRed:248/255. green:49/255. blue:48/255. alpha:1.0] CGColor];
    mk.layer.borderWidth = 1;
    mk.layer.cornerRadius = 2;
    [mk mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset(10);
        make.left.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(50,15));
    }];
    
    UILabel *mktxt = [UILabel new];
    [mk addSubview:mktxt];
    mktxt.text = @"婚纱摄影";
    mktxt.font = [UIFont boldSystemFontOfSize:11.0];
    mktxt.textColor =  [UIColor colorWithRed:248/255. green:49/255. blue:48/255. alpha:1.0];
    [mktxt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
    }];
    
    UILabel *mktit = [UILabel new];
    [self addSubview:mktit];
    mktit.textColor = [UIColor blackColor];
    mktit.text = @"旅拍必拍景点套餐，鼓浪屿/厦大/环岛类似的九分裤";
    mktit.font = [UIFont boldSystemFontOfSize:16.0];
    [mktit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset(8);
        make.left.mas_equalTo(mk.mas_right).offset(10);
        make.width.mas_equalTo(img.mas_width).multipliedBy(0.8);
    }];
    
    UILabel *tig = [UILabel new];
    [self addSubview:tig];
    tig.text = @"上城区 | 杭州锐摄影会所";
    tig.font = [UIFont boldSystemFontOfSize:13];
    tig.textColor = [UIColor grayColor];
    [tig mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mk.mas_bottom).offset(6);
        make.left.mas_equalTo(0);
    }];
    
    UILabel *pce = [UILabel new];
    [self addSubview:pce];
    pce.text = @"￥3899";
    pce.font = [UIFont boldSystemFontOfSize:17];
    pce.textColor = [UIColor colorWithRed:248/255. green:49/255. blue:48/255. alpha:1.0];
    [pce mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mk.mas_bottom).offset(3);
        make.right.mas_equalTo(img.mas_right).offset(0);
    }];
    
    
}

@end















