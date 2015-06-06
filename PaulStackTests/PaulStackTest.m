//
//  PaulStackTest.m
//  PaulStack
//
//  Created by Paul Ade on 2015-06-06.
//  Copyright (c) 2015 Paul Ade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaulStack.h"

int main(int argc, const char *argv[]) {
    
    @autoreleasepool {
        
        PaulStack *pStack = [[PaulStack alloc] init];
        
        // First do some quick tests, to check that the stack is created and empty
        assert([pStack isEmpty] == NO);
        assert([pStack size] == 0);
        assert([pStack pop] == nil);
        assert([pStack isEmpty] == YES);
        
        // Now test with some textual object
        [pStack push:@"monday"];
        [pStack push:@"friday"];
        [pStack push:@"sunday"];
        [pStack push:@"tuesday"];
        
        assert([pStack size] == 4);
        assert([pStack isEmpty] == NO);
        [pStack pop];
        [pStack pop];
        assert([pStack size] == 2);
        assert([pStack isEmpty] == NO);
        
    }
    
    return 0;
}