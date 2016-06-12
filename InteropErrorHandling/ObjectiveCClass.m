//
//  ObjectiveCClass.m
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//  Copyright © 2016 Chris Vig. All rights reserved.
//

#import "ObjectiveCClass.h"

@implementation ObjectiveCClass

// MARK: Void Functions

- (void)voidFunctionWithError:(NSError *_Nullable __autoreleasing *)error
{
    [self setError:error];
}

- (NSInteger)integerFunctionWithError:(NSError * _Nullable __autoreleasing *)error
{
    return 0;
}

- (NSString *)stringFunctionWithError:(NSError * _Nullable __autoreleasing *)error
{
    return @"hello";
}

// MARK: Bool Functions

- (BOOL)returnYESDoNotSetError:(NSError *_Nullable __autoreleasing *)error
{
    return YES;
}

- (BOOL)returnNODoNotSetError:(NSError *_Nullable __autoreleasing *)error
{
    return NO;
}

- (BOOL)returnYESSetError:(NSError *_Nullable __autoreleasing *)error
{
    [self setError:error];
    return YES;
}

- (BOOL)returnNOSetError:(NSError *_Nullable __autoreleasing *)error
{
    [self setError:error];
    return NO;
}

// MARK: String Functions

- (nullable NSString *)returnStringDoNotSetError:(NSError * _Nullable __autoreleasing *)error
{
    return @"hello";
}

- (nullable NSString *)returnNilDoNotSetError:(NSError * _Nullable __autoreleasing *)error
{
    return nil;
}

- (nullable NSString *)returnStringSetError:(NSError * _Nullable __autoreleasing *)error
{
    [self setError:error];
    return @"hello";
}

- (nullable NSString *)returnNilSetError:(NSError * _Nullable __autoreleasing *)error
{
    [self setError:error];
    return nil;
}

// MARK: Private Utility

- (void)setError:(NSError **)error
{
    *error = [NSError errorWithDomain:@"InteropErrorHandling.invictus.so" code:-1 userInfo:nil];
}

@end
