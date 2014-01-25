//
//  ACLoupe.m
//  MagnifyingGlassDemo
//
//  Created by Arnaud Coomans on 18/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ACLoupe.h"
#import <QuartzCore/QuartzCore.h>

#define SYSTEM_VERSION_EQUAL_OR_GREATER_THAN(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

static CGFloat const kACLoupeDefaultRadius = 64;

@implementation ACLoupe

- (id)init {
    self = [self initWithFrame:CGRectMake(0, 0, kACLoupeDefaultRadius*2, kACLoupeDefaultRadius*2)];
    return self;
}

- (id)initWithFrame:(CGRect)frame {
	
	if (self = [super initWithFrame:frame]) {
		self.layer.borderWidth = 0;
		
        UIImageView *loupeImageView = nil;
        
        if SYSTEM_VERSION_EQUAL_OR_GREATER_THAN(@"7.0") {
            loupeImageView = [[UIImageView alloc] initWithFrame:CGRectOffset(CGRectInset(self.bounds, -3.0, -3.0), 0, 2.5)];
            loupeImageView.image = [UIImage imageNamed:@"kb-loupe-hi_7"];
        } else {
            loupeImageView = [[UIImageView alloc] initWithFrame:CGRectOffset(CGRectInset(self.bounds, -5.0, -5.0), 0, 2)];
            loupeImageView.image = [UIImage imageNamed:@"kb-loupe-hi_6"];
        }

		loupeImageView.backgroundColor = [UIColor clearColor];
		[self addSubview:loupeImageView];
	}
	return self;
}

@end
