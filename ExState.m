#import "ExState.h"

@implementation ExState

- (id)initWithWeight:(CGFloat)mWeight andPrice:(CGFloat)mPrice
{  
    
    if (self = [super init])
    {  
         _weight = mWeight;
         _price = mPrice;
    }  

    return self;  
}  
@end