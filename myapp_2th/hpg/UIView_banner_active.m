//
//  UIView_banner_active.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/11.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "UIView_banner_active.h"
#import "Masonry.h"

@implementation UIView_banner_active

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
        [self bannerBox];
    } return self;
    
}

- (void)bannerBox {
    
    UIImageView *box = [UIImageView new];
    box.image = [UIImage imageNamed:@"mk1"];
    [self addSubview:box];
    [box mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
    }];
    
    UIImageView *box2 = [UIImageView new];
    box2.image = [UIImage imageNamed:@"mk2"];
    [self addSubview:box2];
    [box2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(box.mas_right).offset(14);
    }];
    
    UIImageView *box3 = [UIImageView new];
    box3.image = [UIImage imageNamed:@"mk3"];
    [self addSubview:box3];
    [box3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(box2.mas_right).offset(14);
    }];
    
}


@end







