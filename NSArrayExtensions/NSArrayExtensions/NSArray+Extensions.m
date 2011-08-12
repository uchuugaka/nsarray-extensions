//
//  NSArray+Extensions.m
//  NSArrayExtensions
//
//  Created by Noah Santorello on 8/11/11.
//  Copyright 2011 Noah Santorello. All rights reserved.
//

// TODO: (ns): throw exceptions within functions if fn == nil

#import "NSArray+Extensions.h"

@implementation NSArray (Extensions)

-(BOOL)all:(BOOL(^)(id obj))fn
{    
    __block BOOL all = true;
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        all = all && fn(obj);
    }];
    
    return all;
}

-(BOOL)contains:(BOOL(^)(id obj))fn
{
    return [self count:fn] > 0;
}

-(NSInteger)count:(BOOL(^)(id obj))fn
{
    __block int count = 0;
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (fn(obj))
        {
            count++;
        }
    }];
    
    return count;
}

-(id)foldl:(id) acc fn:(id(^)(id acc, id obj))fn
{
    // TODO: (ns): there is probably a memory leak in this function.
    __block id blockAcc = acc;
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        blockAcc = [fn(blockAcc, obj) retain];
    }];
    
    return [blockAcc autorelease];
}

-(BOOL)none:(BOOL(^)(id obj))fn
{
    return [self count:fn] == 0;
}

-(BOOL)one:(BOOL(^)(id obj))fn
{
    return [self count:fn] == 1;
}

@end
