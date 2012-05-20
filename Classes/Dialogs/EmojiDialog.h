//
//  EmojiDialog.h
//  LimeChat
//
//  Created by Tanuma Shuhei on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Quartz/Quartz.h>
#import "InputTextField.h"

@interface EmojiDialog : NSWindowController
{
    InputTextField *text;
    IBOutlet IKImageBrowserView *browser;    
}
@property(retain) InputTextField *text;

- (void)show;
- (void)close;

- (int)numberOfItemsInImageBrowser:(IKImageBrowserView*)view;
- (id)imageBrowser:(IKImageBrowserView *) aBrowser itemAtIndex:(NSUInteger)index;

@end
