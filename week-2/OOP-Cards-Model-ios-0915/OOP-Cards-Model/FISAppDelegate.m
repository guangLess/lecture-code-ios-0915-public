//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    FISCardDeck *deck = [[FISCardDeck alloc] init];

    return YES;
}

@end
