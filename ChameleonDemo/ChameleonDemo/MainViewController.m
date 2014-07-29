//
//  ViewController.m
//  ChameleonDemo
//
//  Created by Vicc Alexander on 7/24/14.
//  Copyright (c) 2014 Vicc Alexander. All rights reserved.
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
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0, 150, 40)];
    titleLabel.attributedText = [self titleString];
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.adjustsFontSizeToFitWidth = YES;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont systemFontOfSize:20];
    self.navigationItem.titleView = titleLabel;
}

// Custom NSAttributedString built with Attributed String Creator
- (NSAttributedString *)titleString {
    
    // Create the attributed string
    NSMutableAttributedString *chameleonString = [[NSMutableAttributedString alloc]initWithString:
                                                  @"Chameleon"];
    
    // Declare the fonts
    UIFont *chameleonStringFont1 = [UIFont fontWithName:@"Helvetica" size:20.0];
    
    // Declare the colors
    UIColor *chameleonStringColor1 = FlatGreen;
    UIColor *chameleonStringColor2 = FlatGreen;
    UIColor *chameleonStringColor3 = FlatGreen;
    UIColor *chameleonStringColor4 = FlatGreenDark;
    UIColor *chameleonStringColor5 = FlatGreenDark;
    
    // Declare the paragraph styles
    NSMutableParagraphStyle *chameleonStringParaStyle1 = [[NSMutableParagraphStyle alloc]init];
    chameleonStringParaStyle1.alignment = 1;
    
    
    // Create the attributes and add them to the string
    [chameleonString addAttribute:NSForegroundColorAttributeName value:chameleonStringColor1 range:NSMakeRange(0,2)];
    [chameleonString addAttribute:NSParagraphStyleAttributeName value:chameleonStringParaStyle1 range:NSMakeRange(0,2)];
    [chameleonString addAttribute:NSFontAttributeName value:chameleonStringFont1 range:NSMakeRange(0,2)];
    [chameleonString addAttribute:NSFontAttributeName value:chameleonStringFont1 range:NSMakeRange(2,2)];
    [chameleonString addAttribute:NSParagraphStyleAttributeName value:chameleonStringParaStyle1 range:NSMakeRange(2,2)];
    [chameleonString addAttribute:NSUnderlineColorAttributeName value:chameleonStringColor2 range:NSMakeRange(2,2)];
    [chameleonString addAttribute:NSForegroundColorAttributeName value:chameleonStringColor3 range:NSMakeRange(2,2)];
    [chameleonString addAttribute:NSParagraphStyleAttributeName value:chameleonStringParaStyle1 range:NSMakeRange(4,3)];
    [chameleonString addAttribute:NSUnderlineColorAttributeName value:chameleonStringColor2 range:NSMakeRange(4,3)];
    [chameleonString addAttribute:NSFontAttributeName value:chameleonStringFont1 range:NSMakeRange(4,3)];
    [chameleonString addAttribute:NSForegroundColorAttributeName value:chameleonStringColor4 range:NSMakeRange(4,3)];
    [chameleonString addAttribute:NSFontAttributeName value:chameleonStringFont1 range:NSMakeRange(7,2)];
    [chameleonString addAttribute:NSParagraphStyleAttributeName value:chameleonStringParaStyle1 range:NSMakeRange(7,2)];
    [chameleonString addAttribute:NSUnderlineColorAttributeName value:chameleonStringColor2 range:NSMakeRange(7,2)];
    [chameleonString addAttribute:NSForegroundColorAttributeName value:chameleonStringColor5 range:NSMakeRange(7,2)];
    
    return chameleonString;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Deselect row at indexpath
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
