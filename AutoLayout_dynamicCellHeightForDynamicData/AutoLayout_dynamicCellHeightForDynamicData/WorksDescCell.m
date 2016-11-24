//
//  WorksDescCell.m
//  
//
//  Created by Jacob on 2016/11/23.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "WorksDescCell.h"
#import "MallWorks.h"

#define WORK_DESC_LINESPACING 4
#define WORK_DESC_FONTSIZE 12

@interface WorksDescCell ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@property (weak, nonatomic) IBOutlet UILabel *descLB; //描述LB
@property (weak, nonatomic) IBOutlet UILabel *weddingVenueLB;                    //婚礼场地
@property (weak, nonatomic) IBOutlet UILabel *weddingDateLB;                     //婚礼日期
@property (weak, nonatomic) IBOutlet UILabel *weddingThemeLB;                    //婚礼主题
@property (weak, nonatomic) IBOutlet UILabel *workThemeColorLB;                  //主题颜色
@property (weak, nonatomic) IBOutlet UILabel *weddingPhotographyLB;              //婚礼摄影
@property (weak, nonatomic) IBOutlet UILabel *weddingCameraLB;                   //婚礼摄像
@property (weak, nonatomic) IBOutlet UILabel *weddingHostLB;                     //婚礼司仪
@property (weak, nonatomic) IBOutlet UILabel *weddingMakeupModellingLB;          //化妆造型
@property (weak, nonatomic) IBOutlet UILabel *weddingFloristryLB;                //婚礼花艺
@property (weak, nonatomic) IBOutlet UILabel *filmingEquipmentLB;                //拍摄设备
@property (weak, nonatomic) IBOutlet UILabel *weddingProgressLB;                 //婚礼流程
@property (weak, nonatomic) IBOutlet UIButton *putBtn; //展开按钮

@property (assign, nonatomic, getter=isOpened) BOOL opened; //已展开
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pointTopMargin; /**< 列表点顶部距离 */
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *putBtnTopMargin;/**< 展开按钮顶部距离 */

@end

@implementation WorksDescCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    [self.putBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    
}

- (void)setMallWork:(MallWorks *)mallWork {
    _mallWork = mallWork;
    
    if (self.isOpened) {
        self.descLB.numberOfLines = 0;
    } else {
        self.descLB.numberOfLines = 3;
    }
    
    if (mallWork.Desc.length) {
        self.pointTopMargin.constant = 10;
    } else {
        self.pointTopMargin.constant = 0;
    }
    if (mallWork.Desc.length) {
        
        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:WORK_DESC_LINESPACING];
        [paragraphStyle setLineBreakMode:NSLineBreakByTruncatingTail];
        NSDictionary *dict = @{
                               NSParagraphStyleAttributeName : paragraphStyle,
                               NSForegroundColorAttributeName : [UIColor lightGrayColor],
                               NSFontAttributeName : [UIFont systemFontOfSize:WORK_DESC_FONTSIZE]
                               };
        self.descLB.attributedText = [[NSAttributedString alloc] initWithString:mallWork.Desc attributes:dict];
    }
    
    if (self.isOpened) {
        if (mallWork.weddingVenue.length) {
            self.weddingVenueLB.text = [NSString stringWithFormat:@"婚礼场地: %@",mallWork.weddingVenue];
        } else {
            self.weddingVenueLB.text = nil;
        }
        if (mallWork.weddingDate) {
            self.weddingDateLB.text = [NSString stringWithFormat:@"婚礼日期: %@",mallWork.weddingDate];
        } else {
            self.weddingDateLB.text = nil;
        }
        if (mallWork.weddingTheme.length) {
            self.weddingThemeLB.text = [NSString stringWithFormat:@"婚礼主题: %@",mallWork.weddingTheme];
        } else {
            self.weddingThemeLB.text = nil;
        }
        if (mallWork.workThemeColor.length) {
            self.workThemeColorLB.text = [NSString stringWithFormat:@"主题颜色: %@",mallWork.workThemeColor];
        } else {
            self.workThemeColorLB.text = nil;
        }
        if (mallWork.weddingPhotography.length) {
            self.weddingPhotographyLB.text = [NSString stringWithFormat:@"婚礼摄影: %@",mallWork.weddingPhotography];
        } else {
            self.weddingPhotographyLB.text = nil;
        }
        if (mallWork.weddingCamera.length) {
            self.weddingCameraLB.text = [NSString stringWithFormat:@"婚礼摄像: %@",mallWork.weddingCamera];
        } else {
            self.weddingCameraLB.text = nil;
        }
        if (mallWork.weddingHost.length) {
            self.weddingHostLB.text = [NSString stringWithFormat:@"婚礼司仪: %@",mallWork.weddingHost];
        } else {
            self.weddingHostLB.text = nil;
        }
        if (mallWork.weddingMakeupModelling.length) {
            self.weddingMakeupModellingLB.text = [NSString stringWithFormat:@"化妆造型: %@",mallWork.weddingMakeupModelling];
        } else {
            self.weddingMakeupModellingLB.text = nil;
        }
        if (mallWork.weddingFloristry.length) {
            self.weddingFloristryLB.text = [NSString stringWithFormat:@"婚礼花艺: %@",mallWork.weddingFloristry];
        } else {
            self.weddingFloristryLB.text = nil;
        }
        if (mallWork.filmingEquipment.length) {
            self.filmingEquipmentLB.text = [NSString stringWithFormat:@"婚礼设备: %@",mallWork.filmingEquipment];
        } else {
            self.filmingEquipmentLB.text = nil;
        }
        if (mallWork.weddingProgress.length) {
            self.weddingProgressLB.text = [NSString stringWithFormat:@"婚礼流程: %@",mallWork.weddingProgress];
        } else {
            self.weddingProgressLB.text = nil;
        }
    } else {
        self.weddingVenueLB.text = nil;
        self.weddingDateLB.text = nil;
        self.weddingThemeLB.text = nil;
        self.workThemeColorLB.text = nil;
        self.weddingPhotographyLB.text = nil;
        self.weddingCameraLB.text = nil;
        self.weddingHostLB.text = nil;
        self.weddingMakeupModellingLB.text = nil;
        self.weddingFloristryLB.text = nil;
        self.filmingEquipmentLB.text = nil;
        self.weddingProgressLB.text = nil;
    }
    
}
- (IBAction)putBtnClick:(UIButton *)sender {
    self.opened = !self.opened;
    if (self.isOpened) {
        [self.putBtn setTitle:@"收起" forState:UIControlStateNormal];
    } else {
        [self.putBtn setTitle:@"展开全部" forState:UIControlStateNormal];
    }
    if ([self.delegate respondsToSelector:@selector(WorksDescCell:didClickPutBtn:)]) {
        [self.delegate WorksDescCell:self didClickPutBtn:sender];
    }
}

- (CGFloat)cellHeight {
    [self.containerView layoutIfNeeded];
    return [self.containerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
}
@end
