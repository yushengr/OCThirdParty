//
//  QYHUD.h
//  Mine_Example
//
//  Created by apple on 2019/3/6.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYHUD : NSObject

+ (void)show;
+ (void)showWithStatus:(NSString*)string;
+ (void)dismiss;
+ (void)showInfoWithStatus:(NSString*)string;
+ (void)showSuccessWithStatus:(NSString*)string;
+ (void)showErrorWithStatus:(NSString*)string;

@end
