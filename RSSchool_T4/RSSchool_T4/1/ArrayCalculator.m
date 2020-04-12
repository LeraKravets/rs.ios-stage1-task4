#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {

//    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@""];
//    NSArray *numberArray = [array filteredArrayUsingPredicate:numberPredicate];
//    NSMutableArray *mutArray = [NSMutableArray arrayWithArray: numberArray];

    NSMutableArray *mutArray = [[NSMutableArray alloc] init];
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    NSInteger maxProduct = 1;

    for (int i = 0; i < array.count; i++) {
        if([[array objectAtIndex:i] isKindOfClass:[NSNumber class]])
        {
            [mutArray addObject:[array objectAtIndex:i]];
        }
    }

    NSSortDescriptor *lowestToHighest = [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: YES];
    [mutArray sortUsingDescriptors:[NSArray arrayWithObject: lowestToHighest]];
    sortedArray = [mutArray copy];

    if (sortedArray.count == 0) {
        return 0;
    }
    else if (sortedArray.count <= numberOfItems) {
        int n = (int)[sortedArray count];
        for (int i = n - 1; i >= 0; i--) {
            maxProduct = maxProduct * [sortedArray[i] integerValue];
        }
        return maxProduct;
    } else {
        NSLog(@"%@", sortedArray);
        if (sortedArray[0] < 0) {
            int n = (int)[sortedArray count] - 1;
            for (int i = n; i >= 0 && numberOfItems > 0; i--) {
                maxProduct *= [sortedArray[i] integerValue];
                numberOfItems -= 1;
            }
            return maxProduct;
        } else {
            int i = (int)[sortedArray count] - 1;
            int z = 0;
            while (numberOfItems > 0)  {
                if (numberOfItems % 2 == 0) {
                    NSInteger prod1 = [sortedArray[i] integerValue] * [sortedArray[i-1] integerValue];
                    NSInteger prod2 = [sortedArray[z] integerValue] * [sortedArray[z+1] integerValue];
                    if (prod1>prod2) {
                        maxProduct *= prod1;
                        i -= 2;
                    } else {
                        maxProduct *= prod2;
                        z += 2;
                    }
                    numberOfItems -= 2;
                } else {
                    maxProduct *= [sortedArray[i] integerValue];
                    i -= 1;
                    numberOfItems -= 1;
                }
            }
        }
        return maxProduct;
    }
    return -1;
}
@end
