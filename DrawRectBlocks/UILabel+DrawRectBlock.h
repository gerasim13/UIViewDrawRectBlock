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
typedef void(^UILabelDrawTextInRectBlock)(CGRect rect);

// Creates and return a UILabel (of frame CGRectZero) with a block that gets called on drawRect.
+ (UILabel *)labelWithDrawRectBlock:(UILabelDrawRectBlock)block;

// Creates and return a UILabel with a block that gets called on drawRect.
+ (UILabel *)labelWithFrame:(CGRect)frame drawRectBlock:(UILabelDrawRectBlock)block;

+ (UILabel *)labelWithDrawTextInRectBlock:(UILabelDrawTextInRectBlock)block;

+ (UILabel *)labelWithFrame:(CGRect)frame drawTextInRectBlock:(UILabelDrawRectBlock)block;
@end
