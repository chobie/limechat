//
//  EmojiElement.m
//  LimeChat
//
//  Created by Tanuma Shuhei on 12/05/20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "EmojiElement.h"

@implementation EmojiElement
{
    
}

@synthesize name;

- (NSString *) imageUID
{
    return name;
}

-(NSString*) imageRepresentationType
{
    return IKImageBrowserPathRepresentationType;
}

-(id) imageRepresentation
{
    NSString *tmp = [NSString stringWithFormat:@"%@/%@.png", 
                     [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"emoji"],
                     name];
//    NSURL *url = [NSURL URLWithString:tmp];

    return tmp;
}

-(NSString*) imageTitle
{
    return self.name;
}

@end
