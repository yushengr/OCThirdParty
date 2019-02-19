//
//  UIScrollView+QYMJRefresh.h
//  News_Example
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, RefreshFooterState) {
    RefreshFooterStateIdle,
    RefreshFooterStateNoMoreData,
    RefreshFooterStateHidden
};

@interface UIScrollView (QYMJRefresh)

@property (nonatomic, assign)BOOL headerState;
@property (nonatomic, assign)RefreshFooterState footerState;

@end
