//
//  ViewController.h
//  StackeViewTest
//
//  Created by Arthur Roolfs on 4/21/16.
//  Copyright © 2016 RoGame Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class StackView;
@interface ViewController : NSViewController

@property (weak) IBOutlet StackView *stackView;
@property (weak) IBOutlet NSTextField *countLabel;

@end

