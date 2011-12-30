//
//  ACMagnifyingView.m
//  MagnifyingGlass
//
//  Created by Arnaud Coomans on 30/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ACMagnifyingView.h"
#import "ACMagnifyingGlass.h"


static CGFloat const kACMagnifyingViewDefaultShowDelay = 0.5;

@interface ACMagnifyingView ()
@property (nonatomic, retain) NSTimer *touchTimer;
- (void)addMagnifyingGlassAtPoint:(CGPoint)point;
- (void)removeMagnifyingGlass;
- (void)updateMagnifyingGlassAtPoint:(CGPoint)point;
@end


@implementation ACMagnifyingView

@synthesize magnifyingGlass, magnifyingGlassShowDelay;
@synthesize touchTimer;


- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		self.magnifyingGlassShowDelay = kACMagnifyingViewDefaultShowDelay;
	}
	return self;
}


#pragma mark - touch events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	self.touchTimer = [NSTimer scheduledTimerWithTimeInterval:magnifyingGlassShowDelay
													   target:self
													 selector:@selector(addMagnifyingGlassTimer:)
													 userInfo:[NSValue valueWithCGPoint:[touch locationInView:self]]
													  repeats:NO];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	[self updateMagnifyingGlassAtPoint:[touch locationInView:self]];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	[self.touchTimer invalidate];
	self.touchTimer = nil;
	[self removeMagnifyingGlass];
}

#pragma mark - private functions

- (void)addMagnifyingGlassTimer:(NSTimer*)timer {
	NSValue *v = timer.userInfo;
	CGPoint point = [v CGPointValue];
	[self addMagnifyingGlassAtPoint:point];
}

#pragma mark - magnifier functions

- (void)addMagnifyingGlassAtPoint:(CGPoint)point {
	
	if (!magnifyingGlass) {
		magnifyingGlass = [[ACMagnifyingGlass alloc] init];
	}
	
	if (!magnifyingGlass.viewToMagnify) {
		magnifyingGlass.viewToMagnify = self;
		
	}
	
	magnifyingGlass.touchPoint = point;
	[self.superview addSubview:magnifyingGlass];
	[magnifyingGlass setNeedsDisplay];
}

- (void)removeMagnifyingGlass {
	[magnifyingGlass removeFromSuperview];
}

- (void)updateMagnifyingGlassAtPoint:(CGPoint)point {
	magnifyingGlass.touchPoint = point;
	[magnifyingGlass setNeedsDisplay];
}
@end
