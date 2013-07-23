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
    __strong UILabelDrawTextInRectBlock drawTextInRectBlock_;
}

- (void)setDrawRectBlock:(UILabelDrawRectBlock)drawRectBlock;

@end


@implementation HSDrawRectBlockLabel

- (void)setDrawRectBlock:(UILabelDrawRectBlock)drawRectBlock {
    drawRectBlock_ = [drawRectBlock copy];
}

- (void)setDrawTextInRectBlock:(UILabelDrawRectBlock)drawTextInRectBlock {
    drawTextInRectBlock_ = [drawTextInRectBlock copy];
}
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    if (drawRectBlock_)
        drawRectBlock_(rect);
}
-(void)drawTextInRect:(CGRect)rect {
    if (drawTextInRectBlock_)
        drawTextInRectBlock_(rect);
}
@end

@implementation UILabel (DrawRectBlock)

+ (UILabel *)labelWithDrawRectBlock:(UILabelDrawRectBlock)block {
    return [self labelWithFrame:CGRectZero drawRectBlock:block];
}


+ (UILabel *)labelWithFrame:(CGRect)frame drawRectBlock:(UILabelDrawRectBlock)block {
    HSDrawRectBlockLabel *label = [[HSDrawRectBlockLabel alloc]initWithFrame:frame];
    [label setDrawRectBlock:block];
    return label;
}

+ (UILabel *)labelWithDrawTextInRectBlock:(UILabelDrawTextInRectBlock)block {
    return [self labelWithFrame:CGRectZero drawRectBlock:block];
}

+ (UILabel *)labelWithFrame:(CGRect)frame drawTextInRectBlock:(UILabelDrawRectBlock)block {
    HSDrawRectBlockLabel *label = [[HSDrawRectBlockLabel alloc]initWithFrame:frame];
    [label setDrawRectBlock:block];
    return label;
}
@end
