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

-(BOOL)string:(NSString *)string containsLetter:(NSString *)letter
{
    // we could break string into an array with the method we wrote,
    // and then check if that array contains the letter.
    // we could also cheat and use [string containsString:letter].

    NSArray *lettersInString = [self arrayWithCharactersOfString:string];
    return [lettersInString containsObject:letter];
}

-(BOOL)string:(NSString *)string hasLettersInCommonWithString:(NSString *)otherString
{
    NSArray *lettersInFirstString = [self arrayWithCharactersOfString:string];

    for(NSString *letter in lettersInFirstString) {
        if([self string:otherString containsLetter:letter]) {
            // So, they have a letter in common!
            return YES;
        }
    }

    return NO;
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

//    NSArray *lettersInState = [self arrayWithCharactersOfString:state];
//    NSLog(@"%@", lettersInState);


    // is "o" in "wyoming"?

    // for each letter in the state...
    //    is it the letter we're looking for? if so, we're done.
    // did we not find any? it's not in there.

//    NSString *theLetterImLookingFor = @"o";
//    for (NSString *character in lettersInState) {
//        // is that character equal to the one i want?
//        if([character isEqualToString:theLetterImLookingFor]) {
//            NSLog(@"We found it! %@ is in %@", theLetterImLookingFor, state);
//        }
//    }

//    BOOL isItInThere = [self string:state containsLetter:@"o"];


    // last piece! does a string have anything in common with another one?
    /*
     state & capital
     break the state into its letters
     are any of those letters in the capital?
     */

//    NSArray *lettersInState = [self arrayWithCharactersOfString:state];
    NSString *capital = @"Cheyenne";

//    for(NSString *letter in lettersInState) {
//        if([self string:capital containsLetter:letter]) {
//            NSLog(@"%@ is not the winner! Its capital, %@, contains %@ from the state!", state, capital, letter);
//            break;
//        }
//    }

//    BOOL wyomingIsTheWinner = ![self string:state hasLettersInCommonWithString:capital];
//    NSLog(@"Wyoming is the winner: %d", wyomingIsTheWinner);


    [self solveTrivia];

    return YES;
}

-(NSString *)solveTrivia
{
    NSDictionary *statesAndTheirCapitals = @{
        @"Alabama": @"Montgomery",
        @"Alaska": @"Juneau",
        @"Arizona": @"Phoenix",
        @"Arkansas": @"Little Rock",
        @"California": @"Sacramento",
        @"Colorado": @"Denver",
        @"Connecticut": @"Hartford",
        @"Delaware": @"Dover",
        @"Florida": @"Tallahassee",
        @"Georgia": @"Atlanta",
        @"Hawaii": @"Honolulu",
        @"Idaho": @"Boise",
        @"Illinois": @"Springfield",
        @"Indiana": @"Indianapolis",
        @"Iowa": @"Des Moines",
        @"Kansas": @"Topeka",
        @"Kentucky": @"Frankfort",
        @"Louisiana": @"Baton Rouge",
        @"Maine": @"Augusta",
        @"Maryland": @"Annapolis",
        @"Massachusetts": @"Boston",
        @"Michigan": @"Lansing",
        @"Minnesota": @"St. Paul",
        @"Mississippi": @"Jackson",
        @"Missouri": @"Jefferson City",
        @"Montana": @"Helena",
        @"Nebraska": @"Lincoln",
        @"Nevada": @"Carson City",
        @"New Hampshire": @"Concord",
        @"New Jersey": @"Trenton",
        @"New Mexico": @"Santa Fe",
        @"New York": @"Albany",
        @"North Carolina": @"Raleigh",
        @"North Dakota": @"Bismarck",
        @"Ohio": @"Columbus",
        @"Oklahoma": @"Oklahoma City",
        @"Oregon": @"Salem",
        @"Pennsylvania": @"Harrisburg",
        @"Rhode Island": @"Providence",
        @"South Carolina": @"Columbia",
        @"South Dakota": @"Pierre",
        @"Tennessee": @"Nashville",
        @"Texas": @"Austin",
        @"Utah": @"Salt Lake City",
        @"Vermont": @"Montpelier",
        @"Virginia": @"Richmond",
        @"Washington": @"Olympia",
        @"West Virginia": @"Charleston",
        @"Wisconsin": @"Madison",
        @"Wyoming": @"Cheyenne"
    };

    // loop over all the states and their capitals
    // the first pair that have no shared letters is the winner!

    for(NSString *state in statesAndTheirCapitals) {
//        [statesAndTheirCapitals objectForKey:state];
        NSString *capital = statesAndTheirCapitals[state];

        NSString *lowercaseState = state.lowercaseString;
        NSString *lowercaseCapital = capital.lowercaseString;

        BOOL isTheWinner = ![self string:lowercaseState hasLettersInCommonWithString:lowercaseCapital];
        if(isTheWinner) {
            NSLog(@"%@ is the winner!", state);
            return state;
        }
    }

    return @"";
}

@end
