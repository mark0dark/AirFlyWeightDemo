#import "Banana.h"
#import "ExState.h"

@interface Banana()

@end


@implementation Banana

-(void)say:(ExState *)exState
{
	NSLog(@"i am Banana,weight:%.1f,price:%.1f",exState.weight,exState.price);
}
@end