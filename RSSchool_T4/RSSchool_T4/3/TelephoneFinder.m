#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc] init];
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    NSInteger n = number.length;
    for (int i = 0; i < n; i++) {
        NSString *ch = [number substringWithRange:NSMakeRange(i, 1)];
        if ([ch  isEqual: @"-"]) {
            return nil;
        } else {
            [arrayOfNumbers addObject: ch];
        }
    }

    for (int i = 0; i < arrayOfNumbers.count; i++) {
        NSInteger intElement = [arrayOfNumbers[i] intValue];
        if (intElement == 0) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"8";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 1) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"2";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"4";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 2) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"1";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"5";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"3";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 3) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"2";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"6";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 4) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"1";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"5";
            result = [copyArray description];
            [resultArray addObject: result];
            copyArray[i] = @"7";
            result = [copyArray description];
            [resultArray addObject: result];
        } else if (intElement == 5) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"2";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"4";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"6";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"8";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 6) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"3";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"5";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"9";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 7) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"4";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"8";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 8) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"9";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"5";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"7";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"0";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        } else if (intElement == 9) {
            NSMutableArray *copyArray = [[NSMutableArray alloc] initWithArray: arrayOfNumbers copyItems:YES];
            copyArray[i] = @"6";
            NSString *result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
            copyArray[i] = @"8";
            result = [copyArray componentsJoinedByString:@""];
            [resultArray addObject: result];
        }
    }
    NSLog(@"%@", resultArray);
    return resultArray;
}
@end
