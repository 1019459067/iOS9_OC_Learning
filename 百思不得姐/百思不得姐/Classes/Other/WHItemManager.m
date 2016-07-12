//
//  WHItemManager.m
//  百思不得姐
//
//  Created by 肖伟华 on 16/7/12.
//  Copyright © 2016年 XWH. All rights reserved.
//

#import "WHItemManager.h"

@implementation WHItemManager

+ (UIBarButtonItem *)itemWithImage:(NSString *)strImg hightImag:(NSString *)strHightImg action:(SEL)action addTarget:(id)target
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:strImg] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:strHightImg] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}
@end
