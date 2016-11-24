//
//  WorksDescCell.h
//  
//
//  Created by Jacob on 2016/11/23.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const WorksDescCellID = @"WorksDescCell";

@class WorksDescCell;
@class MallWorks;

@protocol WorksDescCellDelegate <NSObject>

- (void)WorksDescCell:(WorksDescCell *)worksDescCell didClickPutBtn:(UIButton *)putBtn;

@end

@interface WorksDescCell : UITableViewCell

@property (nonatomic, strong) MallWorks *mallWork;

@property (nonatomic, weak) id<WorksDescCellDelegate> delegate;

- (CGFloat)cellHeight;

@end
