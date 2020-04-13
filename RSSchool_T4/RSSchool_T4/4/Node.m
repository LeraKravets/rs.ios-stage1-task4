//
//  Node.m
//  RSSchool_T4
//
//  Created by Лера on 4/13/20.
//  Copyright © 2020 iOSLab. All rights reserved.
//

#import "Node.h"

@implementation Node
-(id)initWithValue:(NSInteger)number {

    self = [super init];
    if (self) {
        self.number = number;
        self.left = nil;
        self.right = nil;
    }
    return self;
}
@end
