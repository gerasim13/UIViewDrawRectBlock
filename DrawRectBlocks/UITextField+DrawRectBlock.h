//
//  UITextField+DrawRectBlock.h
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/28/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^UITextFieldDrawRectBlock)(CGRect rect);

@interface UITextField (DrawRectBlock)
// Creates and return a UITextField (of frame CGRectZero) with a block that gets called on drawRect.
+ (UITextField *)textFieldWithDrawRectBlock:(UITextFieldDrawRectBlock)block;

// Creates and return a UITextField with a block that gets called on drawRect.
+ (UITextField *)textFieldWithFrame:(CGRect)frame drawRectBlock:(UITextFieldDrawRectBlock)block;
@end
