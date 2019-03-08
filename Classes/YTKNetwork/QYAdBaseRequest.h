//
//  QYAdBaseRequest.h
//  Chest_Example
//
//  Created by apple on 2019/3/8.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YTKRequest.h>

// 获取服务器响应状态码 key
FOUNDATION_EXTERN NSString *const AD_StatusCodeKey;
// 服务器响应数据成功状态码 value
FOUNDATION_EXTERN NSInteger const AD_StatusCodeValue;
// 获取服务器响应数据 key
FOUNDATION_EXTERN NSString *const AD_DataKey;
// msg 描述 key
FOUNDATION_EXTERN NSString *const AD_MsgDescKey;

@interface QYAdBaseRequest : YTKRequest


@end
