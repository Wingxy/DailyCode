//
//  ViewController.m
//  01-XYCycleScroll
//
//  Created by wxy on 15/12/6.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "ViewController.h"

#define xScreenWidth [UIScreen mainScreen].bounds.size.width
#define xScreenHeight [UIScreen mainScreen].bounds.size.height
const NSInteger imagecont = 5;

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) NSMutableArray *sliderImages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 没有使用scrollView？ _ 和 .语法的区别？
//    CGRect imageViewFrame = _scrollView.bounds;
    CGRect imageViewFrame = self.scrollView.bounds;
    
    for (int i = 0; i < imagecont; ++i) {

        // 加载图片
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageViewFrame];
        
        NSString *imageName = [NSString stringWithFormat:@"%03d.jpg",i + 1];
        
        imageView.image = [UIImage imageNamed:imageName];
        
        // 设置图片的x位置
        CGFloat imageX = self.scrollView.bounds.size.width * i;
        
        imageViewFrame.origin.x = imageX;
        
        imageView.frame = imageViewFrame;
        
        [self.scrollView addSubview:imageView];
        [self.sliderImages addObject:imageView];
    
    }
    
    
    [self.view addSubview:_scrollView];
}


#pragma mark - lazy loading 

// scrollView 属性设置
- (UIScrollView *)scrollView {
    
    if (_scrollView == nil) {
        
        CGFloat scrrollViewX = (xScreenWidth - 330) * 0.5;
        
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(scrrollViewX, 64, 330, 220)];
        
        _scrollView.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
        
        // 水平滚动
        _scrollView.contentSize = CGSizeMake(CGFLOAT_MAX, 0);
        
        // 水平和竖直滚动条
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        
        // 弹簧效果
        _scrollView.bounces = NO;
        // 分页
        _scrollView.pagingEnabled = YES;
        
    }
    
    return _scrollView;
}

- (NSMutableArray *)sliderImages {
    
    if (_sliderImages == nil) {
        
        _sliderImages = [NSMutableArray array];
    }
    
    return _sliderImages;
}


@end
