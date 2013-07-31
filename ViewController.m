#import "ViewController.h"
#import "FruitFactory.h"
#import "Banana.h"
#import "Apple.h"
#import "ExState.h"

@interface ViewController ()
{
	Banana *banana;
	Apple *apple;
    
	NSTimer *timer;
    
	NSInteger day;
}
@end


@implementation ViewController

- (void)viewDidLoad
{
	day = 0;
    
	banana = (Banana *)[FruitFactory createFruit:@"Banana"];
	apple = (Apple *)[FruitFactory createFruit:@"Apple"];
    
    timer = [NSTimer scheduledTimerWithTimeInterval: 5
                                             target: self
                                           selector: @selector(handleTimer:)
                                           userInfo: nil
                                            repeats: YES];
}

-(void)handleThing
{
    //第 n 天，香蕉，苹果的价格
    NSLog(@"\n第%d天，每斤水果的价格:\n",day);
	[banana say:[[ExState alloc] initWithWeight: 1 andPrice:day * 2]];
	[apple say:[[ExState alloc] initWithWeight: 1 andPrice:day * 3 ]];
}

-(void)handleTimer:(NSTimer *)timer
{
	day++;
	[self handleThing];
}

@end