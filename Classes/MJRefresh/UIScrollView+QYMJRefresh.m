//
//  UIScrollView+QYMJRefresh.m
//  News_Example
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "UIScrollView+QYMJRefresh.h"

#import <MJRefresh.h>

@implementation UIScrollView (QYMJRefresh)

- (void)setHeaderState:(BOOL)headerState {

    self.headerState = headerState;
    if (headerState) {
        [self.mj_header beginRefreshing];
    }else {
        [self.mj_header endRefreshing];
    }
}

- (void)setFooterState:(RefreshFooterState)footerState {

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
}

@end
