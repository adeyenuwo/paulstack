//
//  PaulStack.m
//  PaulStack
//
//  Created by Paul Ade on 2014-01-10.
//  Copyright (c) 2014 Paul Ade. All rights reserved.
//

#import "PaulStack.h"

@implementation PaulStack

// Instantiate the PaulStack Object
- (instancetype)init
{
    self = [super init];
    if (self) {
        stack = [[NSMutableArray alloc] init];
    }
    return self;
}

// Push an item unto the stack

- (id)push:(id)obj {
    
    [stack addObject:obj];
    
    return stack;
}

// Remove the last item from the stack
- (id)pop {
    
    id lastObject = nil;
    lastObject = [[stack lastObject] copy];
    if (lastObject)
        [stack removeLastObject];
    
    return lastObject;
}

// Allows getting the value of the last item without removing it
- (id)peek {
    id lastObject = nil;
    lastObject = [[stack lastObject] copy];
    if (lastObject)
        return lastObject;
    else
        return nil;
}

// Reset the stack

- (void)clear {
    [stack removeAllObjects];
}

// Get the size of the stack
- (NSUInteger)size {
    return [stack count];
}

// Check if the stack is empty
- (BOOL)isEmpty {
    return [stack count] == 0;
}
@end
