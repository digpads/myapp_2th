//
//  ViewController.m
//  myapp_2th
//
//  Created by 何明礼 on 2018/2/7.
//  Copyright © 2018年 何明礼. All rights reserved.
//

#import "ViewController.h"
#import "UIView_hpg.h"
#import "hpgViewController.h"
#import "Masonry.h"

@interface ViewController ()
    @property (nonatomic, strong) UIImageView *collectIV;

    @property (nonatomic, strong) UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self hpg];
}

- (void)loadUI {
    [self.view addSubview:self.btn];
    [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
    }];
}

- (void)presentClick {
    hpgViewController *hpg = [[hpgViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:hpg];
    [self presentViewController:nav animated:YES completion:nil];

}

- (UIButton *)btn {
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn setTitle:@"present" forState:UIControlStateNormal];
        _btn.backgroundColor = [UIColor magentaColor];
        [_btn addTarget:self action:@selector(presentClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn;
}

- (void)hpg {//old hpg
    
    CGFloat kscreenwidth =  [UIScreen mainScreen].bounds.size.width;
    UIScrollView *main = [UIScrollView new];
    //main.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:main];
    [main mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
    UIView *hpgBox = [UIView new];
    [main addSubview:hpgBox];
    [hpgBox mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(main);
        make.height.mas_equalTo(900);
        make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width);
    }];
    
    UIView_hpg *ui_hpg = [UIView_hpg new];
    [hpgBox addSubview:ui_hpg];
    [ui_hpg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(30);
        make.left.mas_equalTo(16);
        make.right.mas_equalTo(self.view).offset(-16);
        
    }];
}



- (void)groupBox {
    
    UIView *gb = [[UIView alloc] init];
    [self.view addSubview:gb];
    gb.backgroundColor = [UIColor colorWithRed:223/255. green:237/255. blue:234/255. alpha:1.0];
    [gb mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.size.mas_equalTo(CGSizeMake(300,500));
        make.width.and.height.mas_equalTo(self.view);
        
    }];
    //UIImage *pic = [ UIImage imageNamed:@"banner.png"] ;
    
    
    
    
    self.collectIV = [UIImageView new]; //等于self.collectIV = [[UIImageView alloc] init];
    self.collectIV.image = [UIImage imageNamed:@"banner"];
    [self.view addSubview:_collectIV];
    [_collectIV mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.bottom.mas_equalTo(self.view.mas_bottom).offset(0);
        make.left.mas_equalTo(self.view.mas_left).offset(0);
    }];
    
    UIImageView *home = [UIImageView new];
    home.image = [UIImage imageNamed:@"home"];
    [_collectIV addSubview:home];
    [home mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
    }];
    
    UIImageView *set = [UIImageView new];
    set.image = [UIImage imageNamed:@"set"];
    [_collectIV addSubview:set];
    [set mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
    }];
    
    UIImageView *img = [UIImageView new];
    img.image = [UIImage imageNamed:@"image"];
    [_collectIV addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(home.mas_right).offset(0);
        make.right.mas_equalTo(set.mas_left).offset(0);
        make.bottom.mas_equalTo(0);
    }];
    
    

    
    
    UILabel *gtxt = [[UILabel alloc] init];
    gtxt.numberOfLines = 0;
    gtxt.text = @"可怜的手放开，是对付恐惧三顿饭了快三顿饭，打算发了跨境电商发来，手放开";
    //gtxt.textAlignment = NSTextAlignmentCenter;
    [gb addSubview:gtxt];
    [gtxt mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.top.mas_equalTo(10);
        make.bottom.mas_equalTo(-10);
        make.width.mas_equalTo(self.view.mas_width).multipliedBy(0.75);
        //make.width.mas_equalTo(gb.mas_width).multipliedBy(0.5);
       // make.top.mas_equalTo(20);
    }];
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
    txt.font = [UIFont boldSystemFontOfSize:12.0];
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
