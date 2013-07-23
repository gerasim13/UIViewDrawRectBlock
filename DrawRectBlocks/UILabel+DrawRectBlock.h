//
//  UILabel+DrawRectBlock.h
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/22/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (DrawRectBlock)
typedef void(^UILabelDrawRectBlock)(CGRect rect);

// Creates and return a UIView (of frame CGRectZero) with a block that gets called on drawRect.
+ (UILabel *)labelWithDrawRectBlock:(UILabelDrawRectBlock)block;

// Creates and return a UIView with a block that gets called on drawRect.
+ (UILabel *)labelWithFrame:(CGRect)frame drawRectBlock:(UILabelDrawRectBlock)block;
@end
