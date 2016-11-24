//
//  ViewController.m
//  dynamicCellHeight2_hideExpandBtn
//
//  Created by Jacob_Liang on 16/11/24.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import "ViewController.h"
#import "MallServiceDescCell.h"
#import "MallService.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, MallServiceDescCellDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) MallServiceDescCell *temCell;
@property (nonatomic, strong) MallService *mallService;
@property (nonatomic, strong) MallService *mallService2;
@property (nonatomic, strong) MallService *mallService3;
@property (nonatomic, strong) MallService *mallService4;
@property (nonatomic, strong) MallService *mallService5;
@property (nonatomic, strong) MallService *mallService6;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mallService = [[MallService alloc] init];
    self.mallService.Desc = @"假死的分水岭的控件佛似乎";
    
    self.mallService2 = [[MallService alloc] init];
    self.mallService2.Desc = @"分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑";
    
    self.mallService3 = [[MallService alloc] init];
    self.mallService3.Desc = @"假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破的截个屏手动加股票是加股";
    
    self.mallService4 = [[MallService alloc] init];
    self.mallService4.Desc = @"假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破的截个屏手动加股票是假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家手动加股";
    
    self.mallService5 = [[MallService alloc] init];
    self.mallService5.Desc = @"假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破的截个屏手动加股票是假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁股";
    
    self.mallService6 = [[MallService alloc] init];
    self.mallService6.Desc = @"假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破的截个屏手动加股票是假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破的截个屏似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破的截个屏手动加股票是假死的分水岭的控件佛似乎更is的根深蒂固ID积分迫使对方婆家是打破绝对是破房间是破地方就迫使对方就放暑假的频繁接视频都接发配送是破手动加股";
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([MallServiceDescCell class]) bundle:nil] forCellReuseIdentifier:MallServiceDescCellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        MallServiceDescCell *cell = [tableView dequeueReusableCellWithIdentifier:MallServiceDescCellID];
        cell.mallservice = self.mallService;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else if (indexPath.row == 1) {
        MallServiceDescCell *cell = [tableView dequeueReusableCellWithIdentifier:MallServiceDescCellID];
        cell.mallservice = self.mallService2;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else if (indexPath.row == 2) {
        MallServiceDescCell *cell = [tableView dequeueReusableCellWithIdentifier:MallServiceDescCellID];
        cell.mallservice = self.mallService3;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else if (indexPath.row == 3) {
        MallServiceDescCell *cell = [tableView dequeueReusableCellWithIdentifier:MallServiceDescCellID];
        cell.mallservice = self.mallService4;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else if (indexPath.row == 4) {
        MallServiceDescCell *cell = [tableView dequeueReusableCellWithIdentifier:MallServiceDescCellID];
        cell.mallservice = self.mallService5;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    } else if (indexPath.row == 5) {
        MallServiceDescCell *cell = [tableView dequeueReusableCellWithIdentifier:MallServiceDescCellID];
        cell.mallservice = self.mallService6;
        cell.delegate = self;
        self.temCell = cell;
        return cell;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.temCell cellHeight];
}

- (void)MallServiceDescCell:(MallServiceDescCell *)mallServiceDescCell didClickPutBtn:(UIButton *)putBtn {
    [self.tableView reloadData];
}

@end
