//
//  UIButton+Chameleon.m
//  Chameleon
//
//  Created by Vicc Alexander on 9/20/15.
//  Copyright © 2015 Vicc Alexander. All rights reserved.
//

#import "UIButton+Chameleon.h"

@implementation UIButton (Chameleon)

- (void)setSubstituteFontName:(NSString *)name UI_APPEARANCE_SELECTOR {
    
    self.titleLabel.font = [UIFont fontWithName:name size:self.titleLabel.font.pointSize];
}

@end
