//
//  CarouselViewController.m
//  02-PhotoCarousel
//
//  Created by wxy on 15/12/6.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "CarouselViewController.h"

@interface CarouselViewController ()

@property (nonatomic, strong) NSArray *imageURLs;



@end

@implementation CarouselViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadImages];
    
}

- (void)loadImages {
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    for (int i = 0; i < 10; ++i) {
        
        NSString *fileName = [NSString stringWithFormat:@"%02d.jpg",i+1];
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:fileName withExtension:nil];
        
        [arrayM addObject:url];
    }
    
    self.imageURLs = arrayM.copy;
}

@end
