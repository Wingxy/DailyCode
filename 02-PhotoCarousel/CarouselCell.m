//
//  CarouselCell.m
//  02-PhotoCarousel
//
//  Created by wxy on 15/12/7.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "CarouselCell.h"

@interface CarouselCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation CarouselCell

- (void)setImageURL:(NSURL *)imageURL {
    
    _imageURL = imageURL;
    
    NSData *data = [NSData dataWithContentsOfURL:imageURL];
    
    self.iconView.image = [UIImage imageWithData:data];
}

@end
