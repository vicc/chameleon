//
//  ViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 - 2015 Vicc Alexander. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //Create custom navigation title
    [self createTitleLabel];
}


- (void)viewWillAppear:(BOOL)animated {
    
    //Revert navigation bar to default settings
    if (![self.navigationController.navigationBar isTranslucent]) {
        self.navigationController.navigationBar.translucent = YES;
        self.navigationController.navigationBar.barTintColor = nil;
        self.navigationController.navigationBar.tintColor = nil;
        [self setNeedsStatusBarAppearanceUpdate];
    }
}


- (void)createTitleLabel {
    
    //Create custom label for titleView
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    titleLabel.text = @"Chameleon";
    titleLabel.textColor = [UIColor colorWithGradientStyle:UIGradientStyleLeftToRight
                                                 withFrame:titleLabel.bounds
                                                 andColors:@[FlatLime, FlatGreenDark]];
    
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.adjustsFontSizeToFitWidth = YES;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont systemFontOfSize:20];
    self.navigationItem.titleView = titleLabel;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Deselect row at indexpath
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
