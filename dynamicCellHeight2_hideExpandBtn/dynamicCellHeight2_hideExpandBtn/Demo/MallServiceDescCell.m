//
//  MallServiceDescCell.m
//  
//
//  Created by Jacob on 2016/11/24.
//  Copyright © 2016年 taoximao. All rights reserved.
//

#import "MallServiceDescCell.h"
#import "MallService.h"

#define SERVICE_DESC_LINESPACING 4
#define SERVICE_DESC_FONTSIZE 12

@interface MallServiceDescCell ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *descLB;
@property (weak, nonatomic) IBOutlet UIButton *putBtn;

@property (assign, nonatomic, getter=isOpened) BOOL opened; //已展开
@property (nonatomic, assign) BOOL cutBtnHeight;
@end

@implementation MallServiceDescCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    [self.putBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.containerView.backgroundColor = [UIColor lightGrayColor];
}

- (void)setMallservice:(MallService *)mallservice {
    _mallservice = mallservice;
    if (mallservice.Desc.length) {
        self.descLB.numberOfLines = 0;
        NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:SERVICE_DESC_LINESPACING];
        [paragraphStyle setLineBreakMode:NSLineBreakByTruncatingTail];
        NSDictionary *dict = @{
                               NSParagraphStyleAttributeName : paragraphStyle,
                               NSForegroundColorAttributeName : [UIColor darkTextColor],
                               NSFontAttributeName : [UIFont systemFontOfSize:SERVICE_DESC_FONTSIZE]
                               };
        self.descLB.attributedText = [[NSAttributedString alloc] initWithString:mallservice.Desc attributes:dict];
    }
    [self.descLB layoutIfNeeded];
    CGFloat labelHeight = [self.descLB sizeThatFits:CGSizeMake([UIScreen mainScreen].bounds.size.width - 40, MAXFLOAT)].height;
    NSNumber *count = @((labelHeight) / self.descLB.font.lineHeight);
    NSLog(@"共 %td 行", [count integerValue]);
    
    if (count.integerValue <= 3) {
        self.cutBtnHeight = YES;
    } else {
        self.cutBtnHeight = NO;
    }
    if (self.isOpened) {
        self.descLB.numberOfLines = 0;
    } else {
        self.descLB.numberOfLines = 3;
    }
    
}

- (IBAction)putBtnClikc:(UIButton *)sender {
    
    self.opened = !self.opened;
    
    if (self.isOpened) {
        [self.putBtn setTitle:@"收起" forState:UIControlStateNormal];
    } else {
        [self.putBtn setTitle:@"展开全部" forState:UIControlStateNormal];
    }
    if ([self.delegate respondsToSelector:@selector(MallServiceDescCell:didClickPutBtn:)]) {
        [self.delegate MallServiceDescCell:self didClickPutBtn:sender];
    }
}

- (CGFloat)cellHeight {
    [self.containerView layoutIfNeeded];
    CGFloat height = [self.containerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
    if (self.cutBtnHeight) {
        self.putBtn.hidden = YES;
        height -=27;
    } else {
        self.putBtn.hidden = NO;
    }
    return height;
}

@end
