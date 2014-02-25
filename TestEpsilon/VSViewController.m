//
//  VSViewController.m
//  TestEpsilon
//
//  Created by Valentine on 24.02.14.
//  Copyright (c) 2014 silvansky. All rights reserved.
//

#import "VSViewController.h"

#include <float.h>
#import <ImageIO/ImageIO.h>

@interface VSViewController ()

@end

@implementation VSViewController

- (void)viewDidLoad
{
	float x = 1.f;
	x += 10.f;
	NSLog(@"%f", x);
	x -= 10.f;
	if (x < FLT_EPSILON)
	{
		x = 1.f / 3.f;
	}
	NSNumber *n = @(x);
	NSLog(@"%@: %d, %d", n, [n intValue], (int)[n floatValue]);
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"head"]];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
