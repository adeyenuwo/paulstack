//
//  PaulStack.h
//  PaulStack
//
//  Created by Paul Ade on 2014-01-10.
//  Copyright (c) 2014 Paul Ade. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaulStack : NSObject {
    NSMutableArray *stack;
}

// Operations supported by PaulStack

- (id)push:(id)obj;
- (id)pop;
- (void)clear;
- (id)peek;
- (NSUInteger)size;
- (BOOL)isEmpty;
@end
