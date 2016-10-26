//
//  ViewController.m
//  translatesAutoresizingMaskIntoConstraints结合AutoLayout使用
//
//  Created by Jacob_Liang on 16/10/26.
//  Copyright © 2016年 Jacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *subView = [[UIView alloc] init];
    subView.backgroundColor = [UIColor lightGrayColor];
    subView.translatesAutoresizingMaskIntoConstraints = true;
    subView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.containerView addSubview:subView];
    subView.frame = CGRectMake(10, 10, self.containerView.frame.size.width - 20, self.containerView.frame.size.height - 20);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
