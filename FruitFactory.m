#import "FruitFactory.h"
#import "Banana.h"
#import "Apple.h"

@implementation FruitFactory

static NSMutableDictionary *dic;

+(Fruit *)createFruit:(NSString *)key
{

	if(!dic)
	{
		dic = [[NSMutableDictionary alloc] init];
	}
 
	Fruit *fruit = [dic objectForKey:key];

	if(!fruit)
	{
        
		if([key isEqualToString:@"Banana"])
		{
			fruit = [[Banana alloc] init];
		} 
		else if([key isEqualToString:@"Apple"])
		{
			fruit = [[Apple alloc] init];
		}
        
        [dic setObject:fruit forKey:key];
	}

	return fruit;
}
@end