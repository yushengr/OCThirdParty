//
//  QYHUD.h
//  Mine_Example
//
//  Created by apple on 2019/3/6.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYHUD : NSObject

+ (void)showLoadingInView:(UIView *)view;

+ (void)showLoading:(NSString *)text inView:(UIView *)view;

+ (void)showSucceed:(nullable NSString *)text;

+ (void)showError:(nullable NSString *)text;

+ (void)showInfo:(nullable NSString *)text;

+ (void)dismiss;

@end
