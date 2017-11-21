//
//  UIViewController+SlideMenu.m
//  SlideMenuExample
//
//  Created by xrh on 2017/11/21.
//  Copyright © 2017年 xrh. All rights reserved.
//

#import "UIViewController+SlideMenu.h"
#import "SlideMenu.h"

@implementation UIViewController (SlideMenu)

- (SlideMenu *)xl_sldeMenu {
    UIViewController *sldeMenu = self.parentViewController;
    while (sldeMenu) {
        if ([sldeMenu isKindOfClass:[SlideMenu class]]) {
            return (SlideMenu *)sldeMenu;
        } else if (sldeMenu.parentViewController && sldeMenu.parentViewController != sldeMenu)  {
            sldeMenu = sldeMenu.parentViewController;
        } else {
            sldeMenu = nil;
        }
    }
    
    return nil;
}

@end
