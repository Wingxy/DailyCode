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
/// 图像地址数组
@property (nonatomic, strong) NSArray *imageURLs;
/// 流水布局
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;
/// 当前显示的图片索引
@property (nonatomic, assign) NSInteger imageIndex;

@end

@implementation CarouselViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadImages];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self setUpCollectionViewFlowLayout];
    
}

- (void)setUpCollectionViewFlowLayout {
    
    // item 大小
    self.layout.itemSize = self.view.bounds.size;
    // 行列间距
    self.layout.minimumInteritemSpacing = 0;
    self.layout.minimumLineSpacing = 0;
    
    // 滚动方向
    self.layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    // 设置分页
    self.collectionView.pagingEnabled = YES;
    // 默认图片索引数值
    self.imageIndex = 0;
    
    // 滚动到indexPath.item == 1的页面
    NSIndexPath *path = [NSIndexPath indexPathForItem:1 inSection:0];
    [self.collectionView scrollToItemAtIndexPath:path atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:NO];
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
    
    // 设置cell
    // 显示图片索引编号 初始时
    NSInteger index = (indexPath.item - 1 + self.imageURLs.count + self.imageIndex) % self.imageURLs.count;
    
    cell.imageURL = self.imageURLs[index];
    
    return cell;
}

@end
