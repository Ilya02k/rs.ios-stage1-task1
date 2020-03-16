#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {

if ([sadArray count] == 0) {
return @[];
}



    NSMutableArray *myMutableArray = [NSMutableArray arrayWithArray:sadArray];
    
    BOOL flag=NO;
   // NSInteger countOfCycle=[myMutableArray count]-1;
    while(flag==NO){
 
        flag=YES;
    NSInteger previous=0;
    NSInteger next=0;
    
    for(int i=1;i<[myMutableArray count]-1;i++)
    {

    previous =[myMutableArray[i-1] intValue];
    next=[myMutableArray[i+1] intValue];
 
    if(previous+next < [[myMutableArray objectAtIndex:i] intValue])
    {
    [myMutableArray removeObjectAtIndex:i];
        flag=NO;
    }

    }

    }
    return [NSArray arrayWithArray:myMutableArray];
    }

@end
