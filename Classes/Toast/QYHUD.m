//
//  QYHUD.m
//  Mine_Example
//
//  Created by apple on 2019/3/6.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "QYHUD.h"
#import <QMUIKit/QMUITips.h>

@implementation QYHUD

+ (void)showLoadingInView:(UIView *)view {
    [QMUITips showLoadingInView:view];
}

+ (void)showLoading:(NSString *)text inView:(UIView *)view {
    [QMUITips showLoading:text inView:view];
}

+ (void)showSucceed:(nullable NSString *)text {
    [QMUITips showSucceed:text];
}

+ (void)showError:(nullable NSString *)text {
    [QMUITips showError:text];
}

+ (void)showInfo:(nullable NSString *)text {
    [QMUITips showInfo:text];
}

+ (void)dismiss {
    [QMUITips hideAllTips];
}

@end
