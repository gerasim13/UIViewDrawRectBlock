//
//  UILabel+DrawRectBlock.m
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/22/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import "UILabel+DrawRectBlock.h"
#pragma mark An internal wrapper class

@interface HSDrawRectBlockLabel : UILabel {
@private
    __strong UILabelDrawRectBlock drawRectBlock_;
}

- (void)setDrawRectBlock:(UILabelDrawRectBlock)drawRectBlock;

@end


@implementation HSDrawRectBlockLabel

- (void)setDrawRectBlock:(UILabelDrawRectBlock)drawRectBlock {
    drawRectBlock_ = [drawRectBlock copy];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    if (drawRectBlock_)
        drawRectBlock_(rect);
}

@end

@implementation UILabel (DrawRectBlock)
// Creates and return a UIView (of frame CGRectZero) with a block that gets called on drawRect.
+ (UILabel *)labelWithDrawRectBlock:(UILabelDrawRectBlock)block {
    return [self labelWithFrame:CGRectZero drawRectBlock:block];
}

// Creates and return a UIView with a block that gets called on drawRect.
+ (UILabel *)labelWithFrame:(CGRect)frame drawRectBlock:(UILabelDrawRectBlock)block {
    HSDrawRectBlockLabel *label = [[HSDrawRectBlockLabel alloc]initWithFrame:frame];
    [label setDrawRectBlock:block];
    return label;
}
@end
