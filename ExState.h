@interface ExState : NSObject
{
   
}
@property (nonatomic) CGFloat weight;
@property (nonatomic) CGFloat price;

- (id)initWithWeight:(CGFloat)mWeight andPrice:(CGFloat)mPrice;
@end