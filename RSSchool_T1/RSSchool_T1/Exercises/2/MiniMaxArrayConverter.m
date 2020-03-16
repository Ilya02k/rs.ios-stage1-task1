#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter


- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSInteger TheMostMin = 0;
    NSInteger TheMostMax = 0;
    NSInteger N=[array count];
    
    NSNumber *sum = [array valueForKeyPath:@"@sum.self"];
    NSNumber *max = [array valueForKeyPath:@"@max.self"];
    NSNumber *min = [array valueForKeyPath:@"@min.self"];
    
    
    for (NSInteger i=0;i<N;i++)
    {
        if ([array[i] intValue] == [max intValue]){
            TheMostMax = [sum intValue] - min.intValue;
        }
        if ([array[i] intValue] == [min intValue]){
            TheMostMin = [sum intValue] - max.intValue;
        }
    }
    return @[@(TheMostMin), @(TheMostMax)];
}




@end
