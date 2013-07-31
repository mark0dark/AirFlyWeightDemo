#import "Fruit.h"

@interface FruitFactory:NSObject

+(Fruit *)createFruit:(NSString *)key;
@end