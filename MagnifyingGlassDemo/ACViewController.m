//
//  ACViewController.m
//  MagnifyingGlass
//
//  Created by Arnaud Coomans on 30/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ACViewController.h"
#import "ACMagnifyingView.h"
#import "ACMagnifyingGlass.h"
#import "ACLoupe.h"

@implementation ACViewController

@synthesize magnifyingView;


#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	// custom magnifier
	/*
	ACMagnifyingGlass *mag = [[ACMagnifyingGlass alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
	mag.scale = 2;
	self.magnifyingView.magnifyingGlass = mag;
	*/
	
	// loupe
	ACLoupe *loupe = [[ACLoupe alloc] init];
	self.magnifyingView.magnifyingGlass = loupe;
	loupe.scaleAtTouchPoint = NO;

	 
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

@end
