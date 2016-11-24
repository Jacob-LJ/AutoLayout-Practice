//
//  ViewController.m
//  AutoLayout_dynamicCellHeightForDynamicData
//
//  Created by Jacob_Liang on 16/11/24.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import "ViewController.h"
#import "WorksDescCell.h"
#import "MallWorks.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, WorksDescCellDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) WorksDescCell *temCell;
@property (nonatomic, strong) MallWorks *mallWorks;
@property (nonatomic, strong) MallWorks *mallWorks2;
@property (nonatomic, strong) MallWorks *mallWorks3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MallWorks *mallWorks = [[MallWorks alloc] init];
    mallWorks.Desc = @"就氨基酸等贵金属的开发和水电费和集散地覅搜索都能够ID个哈搜地公司的该his递归控件都ISO帝国和搜狗吉欧斯到哈佛is活动覅还是都if会死的哈佛is你给谁看的能够说你都是的女藕丝都能够少女级佛寺的属的开发和水电费和集散地覅搜索都能够ID个哈搜地公司的该his递归控件都ISO帝国和搜狗吉欧斯到哈佛is活动覅还是都if会死的哈佛is你给谁看的能够说你都是的女藕丝都能够少女级佛寺属的开发和水电费和集散地覅搜索都能够ID个哈搜地公司的该his递归控件都ISO帝国和搜狗吉欧斯到哈佛is活动覅还是都if会死的哈佛is你给谁看的能够说你都是的女藕丝都能够少女级佛寺";
    mallWorks.weddingVenue =  @"1111111111111111";
    mallWorks.weddingDate = @"2016-11-24";
    mallWorks.weddingTheme = @"星光蓝";
    mallWorks.weddingPhotography = @"2222222222222";
    mallWorks.weddingCamera = @"hdisosdsdgsodgni";
    mallWorks.weddingHost = @"就是滴四地市";
    mallWorks.weddingMakeupModelling = @"还你你发啥公司的工会";
    mallWorks.weddingFloristry = @"sdhgisodgnsodignos";
    mallWorks.filmingEquipment = @"拍你妹啊!";
    mallWorks.weddingProgress = @"一直到底!!!";
    self.mallWorks = mallWorks;
    
    
    MallWorks *mallWorks2 = [[MallWorks alloc] init];
    mallWorks2.Desc = @"Iyijhjijjjjhhjjhvygiygvigbkbbbhiubbnisfshoeifhsodgoisndingsoidnfosdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsisdfdsdfsdfsdfsdfsdfsdfsd为死就死的工具偶时间给藕丝的死就死的工具偶时间给藕丝死就死的工具偶时间给藕丝死就死的工具偶时间给藕丝死就死的工具偶时间给藕丝死就死的工具偶时间给藕丝死就死的工具偶时间给藕丝";
    mallWorks2.weddingVenue =  nil;
    mallWorks2.weddingDate = @"2016-11-24";
    mallWorks2.weddingTheme = @"星光蓝";
    mallWorks2.weddingPhotography = nil;
    mallWorks2.weddingCamera = @"hdisosdsdgsodgni";
    mallWorks2.weddingHost = @"就是滴四地市";
    mallWorks2.weddingMakeupModelling = @"还你你发啥公司的工会";
    mallWorks2.weddingFloristry = nil;
    mallWorks2.filmingEquipment = nil;
    mallWorks2.weddingProgress = @"一直到底!!!";
    self.mallWorks2 = mallWorks2;
    
    MallWorks *mallWorks3 = [[MallWorks alloc] init];
    mallWorks3.Desc = nil;
    mallWorks3.weddingVenue =  @"1111111111111111";
    mallWorks3.weddingDate = @"2016-11-24";
    mallWorks3.weddingTheme = @"星光蓝";
    mallWorks3.weddingPhotography = @"2222222222222";
    mallWorks3.weddingCamera = @"hdisosdsdgsodgni";
    mallWorks3.weddingHost = @"就是滴四地市";
    mallWorks3.weddingMakeupModelling = @"还你你发啥公司的工会";
    mallWorks3.weddingFloristry = @"sdhgisodgnsodignos";
    mallWorks3.filmingEquipment = @"拍你妹啊!";
    mallWorks3.weddingProgress = @"一直到底!!!";
    self.mallWorks3 = mallWorks3;
    
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([WorksDescCell class]) bundle:nil] forCellReuseIdentifier:WorksDescCellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        WorksDescCell *cell = [tableView dequeueReusableCellWithIdentifier:WorksDescCellID];
        cell.mallWork = self.mallWorks;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else if (indexPath.row == 1) {
        WorksDescCell *cell = [tableView dequeueReusableCellWithIdentifier:WorksDescCellID];
        cell.mallWork = self.mallWorks2;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else {
        WorksDescCell *cell = [tableView dequeueReusableCellWithIdentifier:WorksDescCellID];
        cell.mallWork = self.mallWorks3;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.temCell cellHeight];
}

#pragma mark - WorksDescCellDelegate
- (void)WorksDescCell:(WorksDescCell *)worksDescCell didClickPutBtn:(UIButton *)putBtn {
    [self.tableView reloadData];
}


@end
