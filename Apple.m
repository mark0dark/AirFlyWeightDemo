#import "Apple.h"
#import "ExState.h"

@interface Apple()

@end


@implementation Apple

-(void)say:(ExState *)exState
{
	NSLog(@"i am Apple,weight:%.1f,price:%.1f",exState.weight,exState.price);
}
@end