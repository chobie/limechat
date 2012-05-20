//
//  Emoji.m
//  LimeChat
//
//  Created by Shuhei Tanuma on 5/18/12.
//  Copyright (c) 2012 Gree, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Emoji : NSObject

+ (NSString*)get:(int)index;
+ (int) count;

- (NSString*) render:(NSString*)string;

@end
