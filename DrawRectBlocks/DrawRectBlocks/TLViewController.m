//
//  TLViewController.m
//  DrawRectBlocks
//
//  Created by Terry Lewis II on 7/22/13.
//  Copyright (c) 2013 Terry Lewis. All rights reserved.
//

#import "TLViewController.h"
#import "TLDrawRectBlocks.h"
@interface TLViewController ()

@end

@implementation TLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel *label = [UILabel labelWithFrame:CGRectMake(10, 160, 100, 21) drawRectBlock:^(CGRect rect) {
        CGContextRef ref = UIGraphicsGetCurrentContext();
        CGContextSetStrokeColorWithColor(ref, [UIColor purpleColor].CGColor);
        CGContextSetFillColorWithColor(ref, [UIColor clearColor].CGColor);
        CGContextFillRect(ref, rect);
        CGContextStrokeRect(ref, rect);
    }];
    [self.view addSubview:label];
    label.text = @"the text";
	UIButton *button = [UIButton buttonWithFrame:CGRectMake(10, 100, 50, 50) drawRectBlock:^(CGRect rect) {
        CGContextRef ref = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(ref, [UIColor purpleColor].CGColor);
        CGContextFillRect(ref, rect);
    }];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(doStuff:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
