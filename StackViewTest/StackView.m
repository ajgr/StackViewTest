//
//  StackView.m
//  StackeViewTest
//
//  Created by Arthur Roolfs on 4/21/16.
//  Copyright © 2016 Arthur Roolfs. All rights reserved.
//

#import "StackView.h"
#import "TestView.h"
#import "TestViewController.h"

@implementation StackView


- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {

	}
	return self;
}

- (void)awakeFromNib {
	
		[self loadViews];
}

- (void)drawRect:(CGRect)rect {
	
	CGContextRef cxt = [NSGraphicsContext currentContext].graphicsPort;
	[NSGraphicsContext saveGraphicsState];
	
	CGContextSetFillColorWithColor(cxt, [NSColor redColor].CGColor);
	CGContextSetStrokeColorWithColor(cxt, [NSColor grayColor].CGColor);
	
	//stroke outline
	CGContextSetLineWidth(cxt, 1.6);
	CGContextStrokeRect(cxt, rect);
	CGContextFillRect(cxt, rect);
	
	[NSGraphicsContext restoreGraphicsState];
}

- (void)loadViews {
	
	NSLog(@"self frame:%@", NSStringFromRect(self.frame));
	
	for (int i = 0; i < 4; i++) {

		TestViewController *testViewController = [[TestViewController alloc] initWithNibName:@"TestView" bundle:nil];
		TestView *testView = (TestView *)testViewController.view;
		CGRect frame = {0,0,200,128};
		testView.frame = frame;
		
		
		switch (i) {
			case 1:
				testView.fillColor = [NSColor greenColor];
				break;
			default:
				testView.fillColor = [NSColor blueColor];
				break;
		}
	
		// try this
//		[self addArrangedSubview:testView];
		
		// or this
		[self addView:testView inGravity:NSStackViewGravityTop];
	}

}

@end











