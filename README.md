# MagnifyingGlass

ACMagnifyingGlass is a magnifier like the one you can find in the _notes_ iOS app when moving the cursor.

[![Build Status](https://api.travis-ci.org/acoomans/iOS-MagnifyingGlass.png)](https://api.travis-ci.org/acoomans/iOS-MagnifyingGlass.png)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/v/iOS-MagnifyingGlass/badge.png)](http://beta.cocoapods.org/?q=on%3Aios%20name%3AiOS-MagnifyingGlass%2A)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/p/iOS-MagnifyingGlass/badge.png)](http://beta.cocoapods.org/?q=on%3Aios%20name%3AiOS-MagnifyingGlass%2A)

![screenshots](https://github.com/acoomans/iOS-MagnifyingGlass/raw/master/MagnifyingGlassDemo/screenshot.png)
 

## Install

Just copy the files under the _MagnifyingGlass_ directory into your project, including the .h, .m and .png files.


## Install with CocoaPods

You can either clone this repository or use [CocoaPods](http://cocoapods.org) to add MagnifyingGlass to your project.

Add a pod entry for Parallax to your Podfile:

    pod 'iOS-MagnifyingGlass', '~> 0.0.2'

Install the pod(s) by running:

    pod install
 
 
# Usage

Simply create a _ACMagnifyingView_ view (with alloc/initWithFrame or from nib) and a magnifier will show up when you tap the screen, magnifying the view and its subviews.

It is possible to use a custom magnifier, like this:

	ACMagnifyingGlass *mag = [[ACMagnifyingGlass alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
	mag.scale = 2;
	self.magnifyingView.magnifyingGlass = mag;
	
If you want a loupe like the real one:

	ACLoupe *loupe = [[ACLoupe alloc] init];
	self.magnifyingView.magnifyingGlass = loupe;


## Thanks

This magnifier is inspired by the one from [Chadwick Wood](http://coffeeshopped.com/2010/03/a-simpler-magnifying-glass-loupe-view-for-the-iphone)

The loupe image was extracted thanks to [0xced](https://github.com/0xced/UIKit-Artwork-Extractor)

iOS7 loupe contribution by benhirashima