//
//  UIView_nv.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/11.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "UIView_nv.h"
#import "Masonry.h"

@implementation UIView_nv

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
        [self allcol];
    } return self;
    
}

- (void)allcol {
//    UIImageView *img1th = [UIImageView new];
//    img1th.image = [UIImage imageNamed:@"img1th"];
//    [self addSubview:img1th];
//    [img1th mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(0);
//        make.left.mas_equalTo(0);
//    }];
    
    UIView *lastView = nil;
    for (NSInteger i=1 ; i<6 ; i++) {
        UIImageView *img = [UIImageView new];
        img.image = [UIImage imageNamed:[NSString stringWithFormat:@"new_%ldth",i]];
        [self addSubview:img];
        [img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.centerY.mas_equalTo(0);
            if (!lastView) {
                make.left.mas_equalTo(0);
            }else {
                make.left.mas_equalTo(lastView.mas_right).offset(22);
            }
        }];
        lastView = img;
    }
    
}

- (void)showWithDic:(NSArray *)dic {
    
    NSLog(@"arr:",dic);
}

@end
