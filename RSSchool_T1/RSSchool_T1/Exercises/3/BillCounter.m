#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSMutableArray *cost = [NSMutableArray arrayWithArray:bill];
    [cost removeObjectAtIndex:index];

    
    int sumWithoutAnna = [[cost valueForKeyPath:@"@sum.self"] intValue];
    
    
    NSInteger billForAnna = sumWithoutAnna / 2;
    
    if (sum.intValue > billForAnna)
    {
        NSInteger finalSum = sum.intValue - billForAnna;
        return [NSString stringWithFormat:@"%ld", (long)finalSum];
    }
    else
    {
        return @"Bon Appetit";
    }
}

@end
