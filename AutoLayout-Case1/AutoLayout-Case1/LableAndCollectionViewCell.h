//
//  LableAndCollectionViewCell.h
//  AutoLayout-Case1
//
//  Created by Jacob_Liang on 16/10/6.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LableAndCollectionViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageV;
@property (weak, nonatomic) IBOutlet UILabel *titleLB;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@end
