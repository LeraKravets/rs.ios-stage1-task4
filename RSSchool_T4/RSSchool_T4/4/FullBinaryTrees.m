#import "FullBinaryTrees.h"
#import "Node.h"

@implementation FullBinaryTrees
- (NSString *)stringForNodeCount:(NSInteger)count {
    if(count == 0 || count % 2 == 0 || count < 0) {
        return @"[]";
    } else if (count == 1) {
        return @"[[0]]";
    } else {
        NSArray *t = [self allPossibleFBT:count];
        NSLog(@"%@", t);
    }
    return 0;
}

- (NSArray *)allPossibleFBT:(NSInteger)n {
    if (n < 0 || n % 2 == 0) {
        return @[];
    } else if (n == 1) {
        NSMutableArray<Node *> *result = [NSMutableArray new];
        Node *root = [[Node alloc] initWithValue: 0];
        [result addObject: root];
        return result;
    }

    NSMutableArray<Node *> *result = [NSMutableArray new];
    NSInteger remainingN = n - 1;
    for (int leftCount = 1; leftCount < remainingN; leftCount += 2) {
        NSInteger rightCount = remainingN - leftCount;
        NSArray *leftFbts = [self allPossibleFBT: leftCount];
        NSArray *rightFbts = [self allPossibleFBT: rightCount];

        for (id l in leftFbts) {
            for (id r in rightFbts) {
                Node *root = [[Node alloc] initWithValue: 0];
                root.left = l;
                root.right = r;
                [result addObject: root];
            }
        }
    }
    return result;
}
@end


