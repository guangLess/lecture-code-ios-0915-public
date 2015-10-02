//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISShoppingCart.h"


@implementation FISAppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    FISItem *fish = [[FISItem alloc] initWithName:@"Salmon" priceInCents:650];
    FISItem *orange = [[FISItem alloc] initWithName:@"Orange" priceInCents:50];

    FISShoppingCart *shoppingCart = [[FISShoppingCart alloc] init];
    [shoppingCart.items addObject:fish];
    [shoppingCart.items addObject:orange];

    NSLog(@"shoppingCart.items = %@", shoppingCart.items);

    NSLog(@"subtotal: %lu", [shoppingCart calculateTotalPriceInCents]);

    NSArray *itemsCostingMoreThan75Cents = [shoppingCart allItemsWithMinimumPriceInCents:75];
    NSLog(@"Items >= 75 cents: %@", itemsCostingMoreThan75Cents);

    return YES;
}

@end
