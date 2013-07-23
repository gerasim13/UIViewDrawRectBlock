//
//  UIButton+DrawRectBlock.h
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/22/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DrawRectBlock)

// DrawRect block typedef
typedef void(^UIViewDrawRectBlock)(CGRect rect);

// Creates and return a UIView (of frame CGRectZero) with a block that gets called on drawRect.
+ (UIButton *)buttonWithDrawRectBlock:(UIViewDrawRectBlock)block;

// Creates and return a UIView with a block that gets called on drawRect.
+ (UIButton *)buttonWithFrame:(CGRect)frame drawRectBlock:(UIViewDrawRectBlock)block;

@end
