//
//  NSArray+Extensions.h
//  NSArrayExtensions
//
//  Created by Noah Santorello on 8/11/11.
//  Copyright 2011 Noah Santorello. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Extensions)
    
-(BOOL)all:(BOOL(^)(id obj))fn;
-(BOOL)contains:(BOOL(^)(id obj))fn;
-(NSInteger)count:(BOOL(^)(id obj))fn;
-(id)foldl:(id) acc fn:(id(^)(id acc, id obj))fn;
-(BOOL)none:(BOOL(^)(id obj))fn;
-(BOOL)one:(BOOL(^)(id obj))fn;

@end
