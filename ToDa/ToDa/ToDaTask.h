//
//  ToDaTask.h
//  ToDa
//
//  Created by dry on 12/25/13.
//  Copyright (c) 2013 DigitalBlend. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDaTask : NSObject

@property NSString *name;
@property BOOL completed;
@property (readonly) NSDate *createdAt;

@end
