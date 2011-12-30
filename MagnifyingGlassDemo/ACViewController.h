//
//  ACViewController.h
//  MagnifyingGlass
//
//  Created by Arnaud Coomans on 30/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ACMagnifyingView;

@interface ACViewController : UIViewController
@property (nonatomic, retain) IBOutlet ACMagnifyingView *magnifyingView;
@end
