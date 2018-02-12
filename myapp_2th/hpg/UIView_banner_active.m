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
        [self bannerlist];
    } return self;
    
}


- (void)bannerlist {
    
    UIView *firstView = nil;
    for (NSInteger i=1 ; i<4 ; i++) {
        UIImageView *img = [UIImageView new];
        img.image = [UIImage imageNamed:[NSString stringWithFormat:@"mk%ld",i]];
        [self addSubview:img];
        [img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.centerY.mas_equalTo(0);
            if (!firstView) {
                make.left.mas_equalTo(0);
            }else {
                make.left.mas_equalTo(firstView.mas_right).offset(14);
            }
        }];
        firstView = img;
    }
}


@end







