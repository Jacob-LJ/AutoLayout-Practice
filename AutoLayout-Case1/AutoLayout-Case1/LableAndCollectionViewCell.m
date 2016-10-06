//
//  LableAndCollectionViewCell.m
//  AutoLayout-Case1
//
//  Created by Jacob_Liang on 16/10/6.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import "LableAndCollectionViewCell.h"
#import "BtnCCell.h"

#define ScreenH [UIScreen mainScreen].bounds.size.height
#define ScreenW [UIScreen mainScreen].bounds.size.width

static NSString * const BtnCCellID = @"BtnCCell";

@interface LableAndCollectionViewCell ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;

@end

@implementation LableAndCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.contentView.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    
    self.titleLB.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - (70+10);
    
    [self setUpColletionView];
}

- (void)setUpColletionView {
    
//    [self layoutIfNeeded];//立即布局,让后面用到的 collectionView 的 bounds 就是已经适应好的
    
    self.flowLayout.minimumLineSpacing = 10;
    self.flowLayout.minimumInteritemSpacing = 10;
    self.flowLayout.itemSize = CGSizeMake(([UIScreen mainScreen].bounds.size.width - (70+10) - 10) / 2.0, 30);
    self.flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([BtnCCell class]) bundle:nil] forCellWithReuseIdentifier:BtnCCellID];
}

#pragma mark - UICollectionViewDelegate, UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BtnCCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BtnCCellID forIndexPath:indexPath];
    return cell;
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
