//
//  ViewController.m
//  AutoLayout-Case1
//
//  Created by Jacob_Liang on 16/10/6.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import "ViewController.h"
#import "LableAndCollectionViewCell.h"

static NSString * const LableAndCollectionViewCellID = @"LableAndCollectionViewCell";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *tableData;

@property (nonatomic, strong) LableAndCollectionViewCell *cell;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpTableView];
    
}

- (void)setUpTableView {
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([LableAndCollectionViewCell class]) bundle:nil] forCellReuseIdentifier:LableAndCollectionViewCellID];
    
    self.cell = [self.tableView dequeueReusableCellWithIdentifier:LableAndCollectionViewCellID];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LableAndCollectionViewCell *cell = [tableView dequeueReusableCellWithIdentifier:LableAndCollectionViewCellID];
    cell.titleLB.text = self.tableData[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LableAndCollectionViewCell *cell = self.cell;
    
    cell.titleLB.text = self.tableData[indexPath.row];
    [cell.titleLB sizeToFit];
    
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    CGSize cVSize = cell.collectionView.collectionViewLayout.collectionViewContentSize;
    return size.height + cVSize.height + 1;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

#pragma mark - getter & setter 
- (NSArray *)tableData {
    if (!_tableData) {
        _tableData = @[@"1\n2\n3\n4\n5\n6", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0", @"123456789012345678901234567890", @"1\n2", @"1\n2\n3", @"1",@"2016-10-06 16:47:34.193698 AutoLayout-Case1[15147:482717] subsystem: com.apple.UIKit, category: GestureExclusion, enable_level: 0, persist_level: 0, default_ttl: 1, info_ttl: 0, debug_ttl: 0, generate_symptoms: 0, enable_oversize: 1, privacy_setting: 2, enable_private_data: 0"];
    }
    return _tableData;
}

@end