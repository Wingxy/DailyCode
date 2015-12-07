//
//  CarouselViewController.m
//  02-PhotoCarousel
//
//  Created by wxy on 15/12/6.
//  Copyright © 2015年 wxy. All rights reserved.
//

#import "CarouselViewController.h"
#import "CarouselCell.h"

@interface CarouselViewController ()

@property (nonatomic, strong) NSArray *imageURLs;

@end

@implementation CarouselViewController

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


#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.imageURLs.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    CarouselCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.imageURL = self.imageURLs[indexPath.item];
    
    return cell;
}

@end
