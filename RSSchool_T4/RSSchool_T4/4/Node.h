//
//  Node.h
//  RSSchool_T4
//
//  Created by Лера on 4/13/20.
//  Copyright © 2020 iOSLab. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

@property (assign)NSInteger number;
@property (nullable, nonatomic, strong)Node *left;
@property (nullable, nonatomic, strong)Node *right;

-(id)initWithValue:(NSInteger)number;

@end

NS_ASSUME_NONNULL_END
