//
//  UIButton+DrawRectBlock.h
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/22/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DrawRectBlock)
typedef void(^UIButtonDrawRectBlock)(CGRect rect);

// Creates and return a UIButton (of frame CGRectZero) with a block that gets called on drawRect.
+ (UIButton *)buttonWithDrawRectBlock:(UIButtonDrawRectBlock)block;

// Creates and return a UIButton with a block that gets called on drawRect.
+ (UIButton *)buttonWithFrame:(CGRect)frame drawRectBlock:(UIButtonDrawRectBlock)block;

@end
