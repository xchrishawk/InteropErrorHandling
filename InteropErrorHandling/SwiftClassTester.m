//
//  SwiftClassTester.m
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//

#import "InteropErrorHandling-Swift.h"
#import "SwiftClassTester.h"

@implementation SwiftClassTester

+ (void)callSwiftFromObjectiveC
{
    SwiftClass *swift = [[SwiftClass alloc] init];

    // test voidFunctionThrowsAndReturnError
    {
        NSError *error;
        BOOL result = [swift voidFunctionThrowsAndReturnError:&error];
        if (result)
        {
            NSLog(@"Function voidFunctionThrowsAndReturnError succeeded!");
        }
        else
        {
            NSLog(@"Function voidFunctionThrowsAndReturnError threw NSError! %@", error);
        }
    }

    // test stringFunctionThrows
    {
        NSError *error;
        NSString *string = [swift stringFunctionThrowsAndReturnError:&error];
        if (string)
        {
            NSLog(@"Function stringFunctionThrowsAndReturnError succeeded! Returned %@", string);
        }
        else
        {
            NSLog(@"Function stringFunctionThrowsAndReturnError threw NSError! %@", error);
        }
    }

    // test stringFunctionWithArgument
    {
        NSError *error;
        NSString *string = [swift stringFunctionWithArgument:YES error:&error];
        if (string)
        {
            NSLog(@"Function stringFunctionWithArgument:error: succeeded!");
        }
        else
        {
            NSLog(@"Function stringFunctionWithArgument:error: threw NSError! %@", error);
        }
    }

    // test functionThrowingSwiftErrorEnum
    {
        NSError *error;
        BOOL status = [swift functionThrowingSwiftErrorEnumAndReturnError:&error];
        if (status)
        {
            NSLog(@"Function functionThrowingSwiftErrorEnumAndReturnError succeeded!");
        }
        else
        {
            NSLog(@"Function functionThrowingSwiftErrorEnumAndReturnError threw NSError! %@", error);
        }
    }

}

@end
