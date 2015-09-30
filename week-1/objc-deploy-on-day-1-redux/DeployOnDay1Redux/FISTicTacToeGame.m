//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)

        [self resetBoard];
    }

    return self;
}

-(void)resetBoard
{
    // clear the board (i.e., make it all "")

    self.board = [@[ [@[ @"", @"", @"" ] mutableCopy],
                     [@[ @"", @"", @"" ] mutableCopy],
                     [@[ @"", @"", @"" ] mutableCopy] ] mutableCopy];
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    // goal: return the symbol for the player at the given location
    // from self.board

//    NSArray *boardRowArray = self.board[column];
//    return boardRowArray[row];

    return self.board[row][column];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
//    NSLog(@"canPlayAt %lu %lu", column, row);
//    return YES;

    NSString *playerAtPosition = [self playerAtColumn:column row:row];

//    if([playerAtPosition isEqualToString:@""]) {
//        // no one's there!
//        return YES;
//    }
//    else {
//        return NO;
//    }

    return [playerAtPosition isEqualToString:@""];
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    // write an "X" at column, row in self.board
//    self.board[row][column] = @"X";

    NSMutableArray *columnArray = self.board[row];
    columnArray[column] = @"X";

//    [columnArray replaceObjectAtIndex:column withObject:@"X"];
//    [columnArray setObject:@"X" atIndexedSubscript:column];
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    NSMutableArray *columnArray = self.board[row];
    columnArray[column] = @"O";
}

-(NSString *)winningPlayer
{
    /*
     
     0 0    1 0     2 0
     1 0    1 1     1 2
     2 0    2 1     2 2

     */

    if([self.board[0][0] isEqualToString:self.board[1][1]] &&
       [self.board[1][1] isEqualToString:self.board[2][2]] &&
       ![self.board[0][0] isEqualToString:@""])
    {
        return self.board[0][0];
    }

    return @"";
}

-(BOOL)isADraw
{
    return NO;
}

@end
