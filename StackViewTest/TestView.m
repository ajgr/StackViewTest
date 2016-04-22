//
//  TestView.m
//  StackeViewTest
//
//  Created by Arthur Roolfs on 4/21/16.
//  Copyright © 2016 RoGame Software. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (void)setupDefaults {

	self.strokeColor = [NSColor blackColor];										
	self.fillColor = [NSColor blackColor];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		[self setupDefaults];
		[self setNeedsDisplay:YES];
	}
	return self;
}

- (void)drawRect:(CGRect)rect {
	
	CGContextRef cxt = [NSGraphicsContext currentContext].graphicsPort;
	[NSGraphicsContext saveGraphicsState];
	
	CGContextSetFillColorWithColor(cxt, _fillColor.CGColor);
	CGContextSetStrokeColorWithColor(cxt, _strokeColor.CGColor);
	
	//stroke outline
	CGContextSetLineWidth(cxt, 4.0);
	CGContextStrokeRect(cxt, rect);
	CGContextFillRect(cxt, rect);
	
	[NSGraphicsContext restoreGraphicsState];
}

@end

















