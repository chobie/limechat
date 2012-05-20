//
//  EmojiDialog.m
//  LimeChat
//
//  Created by Tanuma Shuhei on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "EmojiDialog.h"
#import "EmojiElement.h"
#import "Emoji.h"

@implementation EmojiDialog
{
    
}
@synthesize text;

- (id)init
{
    self = [super init];
    if (self) {
        [NSBundle loadNibNamed:@"Emoji" owner:self];
        [browser setCellSize:NSMakeSize(20.0f, 20.0f)];
        [browser reloadData];
    }
    return self;
}

- (void)show
{    
    if (![self.window isVisible]) {
        [self.window center];
    }
    
    [self.window makeKeyAndOrderFront:self];
    [self.window orderWindow:NSWindowAbove relativeTo:0];

}

- (void)close
{
    [self.window close];
}


#pragma mark IKImageBrowserDataSource
-(int) numberOfItemsInImageBrowser:(IKImageBrowserView*)view
{
    return [Emoji count];
}

-(id) imageBrowser:(IKImageBrowserView*) aBrowser itemAtIndex:(NSUInteger)index
{
    NSString *emoji_name = [Emoji get:index];
    EmojiElement *elm = [[EmojiElement alloc] init];
    
    elm.name = emoji_name;
    
    return elm;
}

- (void) imageBrowser:(IKImageBrowserView *) aBrowser cellWasDoubleClickedAtIndex:(NSUInteger) index
{
    [text setStringValue:[NSString stringWithFormat:@"%@:%@:", 
                               [text stringValue], 
                               [Emoji get:index]]];
}

@end
