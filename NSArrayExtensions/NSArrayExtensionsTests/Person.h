//
//  Person.h
//  NSArrayExtensions
//
//  Created by Noah Santorello on 8/13/11.
//  Copyright 2011 Noah Santorello. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
    
}

@property (copy) NSString* name;
@property (copy) NSNumber* age;
@property (assign) Person* friend;

@end
