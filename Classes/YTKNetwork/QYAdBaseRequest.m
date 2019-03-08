//
//  QYAdBaseRequest.m
//  Chest_Example
//
//  Created by apple on 2019/3/8.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "QYAdBaseRequest.h"

// 获取服务器响应状态码 key
NSString *const AD_StatusCodeKey = @"statuscode";
// 服务器响应数据成功状态码 value
NSInteger const AD_StatusCodeValue = 200;
// 获取服务器响应数据 key
NSString *const AD_DataKey = @"result";
// msg 描述 key
NSString *const AD_MsgDescKey = @"msg";

@implementation QYAdBaseRequest

- (BOOL)statusCodeValidator {

    NSDictionary *responseDict = [super responseJSONObject];
    NSInteger stCode = (long)responseDict[AD_StatusCodeKey];
    return stCode == AD_StatusCodeValue;
}

// 自定义 error
- (NSError *)error {

    NSError *error = [super error];
    NSDictionary *responseDict = [super responseJSONObject];

    // 获取服务器反馈状态码
    NSInteger stCode = (long)responseDict[AD_StatusCodeKey];
    NSString *msg = responseDict[AD_MsgDescKey];

    // 获取原有 domain errorCode userInfo
    NSErrorDomain domain = error.domain;
    NSInteger errorCode = error.code;
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionaryWithDictionary:error.userInfo];
    userInfo[AD_MsgDescKey] = msg;

    // 响应服务器状态码
    if (stCode != AD_StatusCodeValue) {
        error = [NSError errorWithDomain:domain code:errorCode userInfo:[userInfo copy]];
    }

    return error;
}

- (id)responseJSONObject {

    NSDictionary *dict = [super responseJSONObject];
    id data = dict[AD_DataKey];
    return data;
}

@end
