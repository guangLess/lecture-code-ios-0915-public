//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

/*
 
 >> is a given character in another string?
 
 are any letters in string A in string B?
    >> looping over the characters in a string
        >> turn a string into an array of its characters
            >> git a single character of a string


 */

-(NSString *)characterOfString:(NSString *)string atIndex:(NSUInteger)index
{
    unichar nthCharacterAsUnichar = [string characterAtIndex:index];
    return [NSString stringWithFormat:@"%C", nthCharacterAsUnichar];
}

-(NSArray *)arrayWithCharactersOfString:(NSString *)string
{
    NSMutableArray *lettersInString = [[NSMutableArray alloc] init];

    for(NSUInteger i = 0; i < string.length; i++) {
        NSString *characterAtIndex = [self characterOfString:string atIndex:i];
        [lettersInString addObject:characterAtIndex];
    }

    return lettersInString;
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // "Wyoming" --> w y o m i n g ...?


    NSString *state = @"Wyoming";

//    unichar firstCharacterAsUnichar = [state characterAtIndex:0];
//    NSString *firstCharacter = [NSString stringWithFormat:@"%C", firstCharacterAsUnichar];

    NSString *firstCharacter = [self characterOfString:state atIndex:0];
    NSLog(@"The first character of %@ is %@", state, firstCharacter);


    // Wyoming --> [W,y,o,...]
//    NSMutableArray *lettersInState = [[NSMutableArray alloc] init];

//    for(NSUInteger i = 0; i < state.length; i++) {
////        NSLog(@"The %lu letter of %@ is %@", i, state, [self characterOfString:state atIndex:i]);
//        NSString *characterAtIndex = [self characterOfString:state atIndex:i];
//        [lettersInState addObject:characterAtIndex];
//    }

    NSArray *lettersInState = [self arrayWithCharactersOfString:state];

    NSLog(@"%@", lettersInState);



    return YES;
}

-(NSString *)solveTrivia
{


    return @"";
}

@end
