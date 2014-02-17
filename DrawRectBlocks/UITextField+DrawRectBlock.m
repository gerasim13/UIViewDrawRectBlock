//
//  UITextField+DrawRectBlock.m
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/28/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import "UITextField+DrawRectBlock.h"
@interface HSDrawRectBlockTextField : UITextField {
@private
    __strong UITextFieldDrawRectBlock drawRectBlock_;
}

- (void)setDrawRectBlock:(UITextFieldDrawRectBlock)drawRectBlock;

@end


@implementation HSDrawRectBlockTextField

- (void)setDrawRectBlock:(UITextFieldDrawRectBlock)drawRectBlock {
    drawRectBlock_ = [drawRectBlock copy];
}

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    if (drawRectBlock_)
        drawRectBlock_(rect);
    
}

@end

@implementation UITextField (DrawRectBlock)
// Creates and return a UITextField (of frame CGRectZero) with a block that gets called on drawRect.
+ (UITextField *)textFieldWithDrawRectBlock:(UITextFieldDrawRectBlock)block {
    return [self textFieldWithFrame:CGRectZero drawRectBlock:block];
}

// Creates and return a UITextField with a block that gets called on drawRect.
+ (UITextField *)textFieldWithFrame:(CGRect)frame drawRectBlock:(UITextFieldDrawRectBlock)block {
    HSDrawRectBlockTextField *textField = [[HSDrawRectBlockTextField alloc] initWithFrame:frame];
    [textField setDrawRectBlock:block];
    
    return textField;
}

@end
