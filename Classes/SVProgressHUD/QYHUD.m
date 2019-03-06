//
//  QYHUD.m
//  Mine_Example
//
//  Created by apple on 2019/3/6.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "QYHUD.h"
#import <SVProgressHUD/SVProgressHUD.h>

@implementation QYHUD

+ (void)show {
    [SVProgressHUD show];
}

+ (void)showWithStatus:(NSString*)string {
    [SVProgressHUD showWithStatus:string];
}

+ (void)dismiss {
    [SVProgressHUD dismiss];
}

+ (void)showInfoWithStatus:(NSString*)string {
    [SVProgressHUD showInfoWithStatus:string];
}

+ (void)showSuccessWithStatus:(NSString*)string {
    [SVProgressHUD showSuccessWithStatus:string];
}

+ (void)showErrorWithStatus:(NSString*)string {
    [SVProgressHUD showErrorWithStatus:string];
}

@end
