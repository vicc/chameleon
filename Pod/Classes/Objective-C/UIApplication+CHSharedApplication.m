//
//  UIApplication+CHSharedApplication.m
//  Pods
//
//  Created by Vicc Alexander on 9/16/16.
//
//

#import "UIApplication+CHSharedApplication.h"
#import <objc/runtime.h>

@implementation UIApplication (CHSharedApplication)

+ (void)load {
    
    if (![[[NSBundle mainBundle] bundlePath] hasSuffix:@".appex"]) {
        Method sharedApplicationMethod = class_getClassMethod([UIApplication class], @selector(sharedApplication));
        if (sharedApplicationMethod != NULL) {
            IMP sharedApplicationMethodImplementation = method_getImplementation(sharedApplicationMethod);
            Method CH_sharedApplicationMethod = class_getClassMethod([UIApplication class], @selector(CH_sharedApplication));
            method_setImplementation(CH_sharedApplicationMethod, sharedApplicationMethodImplementation);
        }
    }
}

+ (UIApplication *)CH_sharedApplication {
    return nil;
}

@end
