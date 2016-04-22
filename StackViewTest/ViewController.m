//
//  ViewController.m
//  StackeViewTest
//
//  Created by Arthur Roolfs on 4/21/16.
//  Copyright © 2016 Arthur Roolfs. All rights reserved.
//

#import "ViewController.h"
#import "StackView.h"

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	_countLabel.stringValue = [NSString stringWithFormat:@"%d", 0];
}

- (void)setRepresentedObject:(id)representedObject {
	[super setRepresentedObject:representedObject];
}

- (IBAction)onGetCount:(id)sender {
	
	NSArray *stackViews = [_stackView views];
	_countLabel.stringValue = [NSString stringWithFormat:@"%ld", stackViews.count];
}


@end
