//
//  UIImageView+QYSDWebImage.m
//  News_Example
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "UIImageView+QYSDWebImage.h"

@implementation UIImageView (QYSDWebImage)

#pragma mark - 下载
- (void)qy_setImage:(NSString *)urlStr Placeholder:(NSString *)imageName {

    [self sd_setImageWithURL:[NSURL URLWithString:urlStr] placeholderImage:[UIImage imageNamed:imageName] options:SDWebImageRetryFailed | SDWebImageLowPriority];
}

#pragma mark - 下载监听回调
- (void)qy_setImage:(NSString *)urlStr Placeholder:(NSString *)imageName Success:(DownImageSuccessBlock)success Failed:(DownImageFailedBlock)failed progress:(DownImageProgressBlock)progress {

    [self sd_setImageWithURL:[NSURL URLWithString:urlStr] placeholderImage:[UIImage imageNamed:imageName] options:SDWebImageRetryFailed | SDWebImageLowPriority progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {

        progress(receivedSize * 1.0 / expectedSize);

    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {

        if (error) {
            failed(error);
        } else {
            self.image = image;
            success(image);
        }
    }];
}

@end
