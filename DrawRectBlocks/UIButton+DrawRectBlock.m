//
//  UIButton+DrawRectBlock.m
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/22/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import "UIButton+DrawRectBlock.h"
#pragma mark An internal wrapper class

@interface HSDrawRectBlockButton : UIButton {
@private
    __strong UIButtonDrawRectBlock drawRectBlock_;
}

- (void)setDrawRectBlock:(UIButtonDrawRectBlock)drawRectBlock;

@end


@implementation HSDrawRectBlockButton

- (void)setDrawRectBlock:(UIButtonDrawRectBlock)drawRectBlock {
    drawRectBlock_ = [drawRectBlock copy];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    if (drawRectBlock_)
        drawRectBlock_(rect);
}

@end


#pragma mark - Category with a class method to create a wrapper UIView with a draw rect block

@implementation UIButton (DrawRectBlock)


// Creates and return a UIView (of frame CGRectZero) with a block that gets called on drawRect.
+ (UIButton *)buttonWithDrawRectBlock:(UIButtonDrawRectBlock)block {
    return [self buttonWithFrame:CGRectZero drawRectBlock:block];
}

// Creates and return a UIView with a block that gets called on drawRect.
+ (UIButton *)buttonWithFrame:(CGRect)frame drawRectBlock:(UIButtonDrawRectBlock)block {
    HSDrawRectBlockButton *button = [[HSDrawRectBlockButton alloc] initWithFrame:frame];
    [button setDrawRectBlock:block];
    
    return button;
}

@end
