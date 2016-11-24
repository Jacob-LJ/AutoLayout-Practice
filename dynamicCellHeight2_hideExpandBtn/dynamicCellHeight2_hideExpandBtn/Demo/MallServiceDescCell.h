//
//  MallServiceDescCell.h
//  
//
//  Created by Jacob on 2016/11/24.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MallServiceDescCell;
@class MallService;

static NSString *const MallServiceDescCellID = @"MallServiceDescCell";

@protocol MallServiceDescCellDelegate <NSObject>

- (void)MallServiceDescCell:(MallServiceDescCell *)mallServiceDescCell didClickPutBtn:(UIButton *)putBtn;

@end

@interface MallServiceDescCell : UITableViewCell

@property (nonatomic, strong) MallService *mallservice;
@property (nonatomic, weak) id<MallServiceDescCellDelegate> delegate;

- (CGFloat)cellHeight;

@end
