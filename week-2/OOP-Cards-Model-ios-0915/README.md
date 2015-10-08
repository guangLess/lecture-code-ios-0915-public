# OOP Cards Model

## Objectives 

1. Model real-world objects by subclassing `NSObject`.
2. Get more practice creating properties, methods, and initializers.
3. Learn to override the `description` property for customized use in debugging.

## Introduction

In this lab, you're going to get further practice subclassing from `NSObject` by creating a model of a playing card (`FISCard`) and a model of a playing card deck (`FISCardDeck`). While this assignment does little to use the functionality of the data models that you'll be setting up, this lab is a prerequisite for certain labs later in the course that will rely on these data models to create a card game (such as Blackjack).

#### Overriding `description`

Whenever we send objects to an `NSLog()` to be printed in the console, what that handy function actually does is read the `description` string property of that object. You won't see this property listed in the Apple Reference Docs for any of the classes that you're used to working with, however. This is because `description` is actually a property on `NSObject` which means that all objects in the Core Foundation inherit it. Many of them, such as `NSArray`, override it to customize how they answer the query. As a part of this lab, you'll do the same for your custom classes.

## Instructions 

Open the `OOP-Cards-Model.xcworkspace` file. You'll notice that the project is empty except for the `FISAppDelegate` class and two tests files.

#### I. Create the Subclass Files

1. Create the class files that the tests are expecting: `FISCard` and `FISCardDeck`.

2. Prepare the `FISCard` class. It should have:
  * two class methods,
     * `validSuits` which returns an `NSArray`, and
     * `validRanks` which returns an `NSArray`;
  * four public `readonly` properties in the `.h` (remember to make them privately `readwrite` in the `.m` file, so we can change them in there),
     * an `NSString` property called `suit`,
     * an `NSString` property called `rank`,
     * an `NSString` property called `cardLabel`, and
     * an `NSUInteger` property called `cardValue`; and
  * a designated initializer that accepts arguments for the `suit` and `rank` string properties.

3. Prepare the `FISCardDeck` class. It should have:
  * two public properties:
     * an `NSMutableArray` called `remainingCards`, and
     * an `NSMutableArray` called `dealtCards`;
  * four public methods:
     * `drawNextCard` which returns a `FISCard` (you'll need to import `FISCard.h` for this),
     * `resetDeck` which provides no return,
     * `gatherDealtCards` which provides no return, and
     * `shuffleRemainingCards` which provides no return.

4. Define all of the declared methods to default implementations so that the test build will succeed. Run the testing suite to check its initial failures.

#### II. Complete the `FISCard` Class

1. Write the implementation for the `validSuits` class method to return an array containing the four unicode characters for card suits ( ♠ ♥ ♣ ♦ ) saved inside strings.

2. Write the implementation for the `validRanks` class method to return an array containing a string representation of the thirteen card ranks from Ace to King.  
**Hint:** *Use digits to represent the numbered cards and abbreviate the face cards to "A", "J", "Q", "K". In this implementation, the Ace should be ordered as a low card.*

3. Before writing the initializers, declare two helper methods to be used for setting the `_cardLabel` and `_cardValue` ivars inside the initializer. Name them yourself, but think of descriptive names for them that will make it obvious what their uses are. Keep in mind that:
  * the method for the card's label will need to return an `NSString`, and
  * the method for the card's value will need to return an `NSUInteger`.

4. The implementation for your card's label helper method should be pretty straightforward. It should interpolate the `suit` and `rank` properties together in such a way that the Queen of Spades will show `♥Q` and the Ten of Diamonds will show `♦10`. Return the interpolated string as the result of the method.

5. The implementation for your card's value helper method will be a little more complex. It will need to return `1` for an Ace, the face value of the numbered cards (i.e. `2` for a Two and `10` for a Ten), and `10` for the face cards (i.e. Jack, Queen, and King).  
**Hint:** *If the ranks are stored in an array, can you detect the index of a rank in that array? Then you could somehow use the index value to determine the card's value. Remember, if the Ace is first in the array, its index will be zero.*  
**Advanced:** *This is a case where Enums are most appropriate to use, however we don't cover them in the curriculum so we've taken a different route.*

6. Write the implementation for the designated initializer (you should have named it `initWithSuit:rank:`). Set the ivars for `_suit` and `_rank` to their associated arguments. Use your helper methods that you just wrote to set the ivars for `_cardLabel` and `_cardValue`. Your helper methods should keep your initializer's implementation looking crisp and clean. Tweak the logic in your helper methods until the tests pass.

7. Override the default initializer `init` to call the designated initializer while passing in `@"!"` as the `suit` argument and `@"N"` as the `rank` argument.

8. Override the implementation for the `description` method (i.e. the getter for the `description` property). Like `init`, `description` should present itself as an option to autocomplete. This is because the superclass `NSObject` has declared both of these methods publicly. The implementation for the override of `description` is simple: return the string value stored in the `cardLabel` property.

9. Navigate to the `FISAppDelegate.m` file and use the `application:didFinishLaunchingWithOptions:` method as a playground. Import the `FISCard.h` header file to give yourself access to the class. Manually create a default `FISCard` object and `NSLog()` its `description` property. Run the scheme `⌘` `R` (not the tests!) and you should see `!N` print neatly to the debug console.

10. Verify that all of the tests for `FISCard` pass before moving on. The `FISCardDeck` class depends on the the `FISCard` class to work properly.

#### III. Complete the `FISCardDeck` Class

1. Declare a private helper method that will be used to generate the fifty-two cards in a standard deck. Think of an appropriate name based on its intended behavior. Make it a `void` method and leave its implementation empty for now.

2. Overwrite the default initializer (`init`). Have it initialize the `_remainingCards` and `_dealtCards` ivars to new `NSMutableArray`s. At the end of the `if (self)` scope, insert a call to `self` of your card generator helper method that you just declared. Finish the rest of the initializer and run the tests to check that the array properties are getting initialized.

3. Write the implementation for your card generator helper method. Think about how you can use the two arrays that you saved in the `FISCard` class methods `validSuits` and `validRanks` to dynamically create one unique card of each suit and rank combination. Add each card to the `remainingCards` array.  
**Hint:** *You'll need to use a loop within a loop.*

4. Write the implementation for the `drawNextCard` method. It should return a card at one end of the array (*it is up to you to choose between making this either the first object or the last object in the array*). However, this method should also remove that card from the `remainingCards` array, and also add it to the `dealtCards` array. This way, our instance of `FISCardDeck` will always keep track of all fifty-two cards, even after drawing them.

5. You'll notice that there's a test which attempts to draw a fifty-third card from our fifty-two card deck. Add a protection against this behavior at the beginning of the `drawNextCard` method to `return nil` if there are no cards in the `remainingCards` array.  
**Top-tip:** *Add an `NSLog()` along with this protection to print a message that the deck is empty.*

6. Write the implementation for the `resetDeck` method to call the `gatherDealtCards` method and then the `shuffleRemainingCards` method. That's it, however the tests for `resetDeck` will fail until those other method implementations are completed.  
**Advanced:** *This method is the intended interface for interacting with the deck. There is not a "testable" option in Objective-C so the smaller methods must be made fully public in order to be visible to the tests.*

7. Write the implementation for the `gatherDealtCards` method. It should add the cards in the `dealtCards` array back into the `remainingCards` array and leave the `dealtCards` array empty.

8. Write the implementation for the `shuffleRemainingCards` method. Randomizing a collection is a difficult challenge and there are several ways to approach it. One approach would be to take the following steps:
  * "pick up" the deck by making a `mutableCopy` of the `remainingCards` array and emptying the `remainingCards` array,
  * begin a loop limited by the total number of cards to be shuffled (*in most cases this will be fifty-two, but can you guarantee that?*),
  * randomly draw a card out of the copied mutable array and insert it into the `remainingCards` array (*make sure to remove it from the copied array*).  
**Top-tip:** *To get a random integer, use the* `arc4random_uniform()` *C function which specifically takes a* `u_int32_t` *parameter. To silence the warning generated when passing it an* `NSUInteger` *variable, cast the* `NSUInteger` *variable as an* `unsigned int` *C primitive.*

9. Override the `description` method to return a customized readout. You should begin by printing the count of the `remainingCards` array, and continue by appending the `card.description` of each card in the `remainingCards` array.  
**Hint:** *This is a great time to use an* `NSMutableString`.  
**Hint:** *You can hardcode a newline character with* `\n` *and indentations with spaces.*  
Consider the following example when building your `description` method:

```
2015-10-01 16:22:30.422 OOP-Cards-Model[6488:163010] FISCardDeck
count: 52
cards:
  ♠A  ♠2  ♠3  ♠4  ♠5  ♠6  ♠7  ♠8  ♠9  ♠10  ♠J  ♠Q  ♠K
  ♥A  ♥2  ♥3  ♥4  ♥5  ♥6  ♥7  ♥8  ♥9  ♥10  ♥J  ♥Q  ♥K
  ♣A  ♣2  ♣3  ♣4  ♣5  ♣6  ♣7  ♣8  ♣9  ♣10  ♣J  ♣Q  ♣K
  ♦A  ♦2  ♦3  ♦4  ♦5  ♦6  ♦7  ♦8  ♦9  ♦10  ♦J  ♦Q  ♦K
```

Because of the randomization, the tests are only checking that it contains the substrings `@"count"` and `@"cards"`, so it's generally up to you to make this something useful.

10 — Navigate to the `FISAppDelegate.m` file and import `FISCardDeck.h`. In the `application:didFinishLaunchingWithOptions:` method, create a new `FISCardDeck` variable and `NSLog()` its `description` property. Play around with the methods you wrote, printing the description to watch the deck change.

**Advanced:** *Try playing a few draws of War with yourself if you like, but don't get bogged down in a thorough implementation of the game.*
