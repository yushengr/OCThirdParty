//
//  UIScrollView+QYMJRefresh.m
//  News_Example
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "UIScrollView+QYMJRefresh.h"

#import <objc/runtime.h>
#import <MJRefresh.h>

@implementation UIScrollView (QYMJRefresh)

static void *key = &key;

- (void)setHeaderState:(BOOL)headerState {

    self.headerState = headerState;
    if (headerState) {
        [self.mj_header beginRefreshing];
    }else {
        [self.mj_header endRefreshing];
    }
    objc_setAssociatedObject(self, &key, @(headerState), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)headerState {
    return [objc_getAssociatedObject(self, &key) boolValue];
}

- (void)setFooterState:(RefreshFooterState)footerState {

    self.footerState = footerState;
    switch (footerState) {
        case RefreshFooterStateIdle:
            [self.mj_footer setHidden:false];
            [self.mj_footer endRefreshing];
            break;
        case RefreshFooterStateNoMoreData:
            [self.mj_footer setHidden:false];
            [self.mj_footer endRefreshingWithNoMoreData];
            break;
        case RefreshFooterStateHidden:
            [self.mj_footer setHidden:true];
            [self.mj_footer resetNoMoreData];
            break;
    }
    objc_setAssociatedObject(self, &key, @(footerState), OBJC_ASSOCIATION_ASSIGN);
}

- (RefreshFooterState)footerState {
    return [objc_getAssociatedObject(self, &key) integerValue];
}

@end
