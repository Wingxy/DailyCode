//
//  CarouselCell.m
//  02-PhotoCarousel
//
//  Created by wxy on 15/12/6.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "CarouselCell.h"

@interface CarouselCell()


@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@end

@implementation CarouselCell

// 可以使用 SDWebimage 替换图片加载
- (void)setImageURL:(NSURL *)imageURL {
    
    _imageURL = imageURL;
    
    NSData *data = [NSData dataWithContentsOfURL:imageURL];
    
    self.iconImageView.image = [UIImage imageWithData:data];
}

@end
