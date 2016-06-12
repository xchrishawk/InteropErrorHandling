//
//  ObjectiveCClass.h
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** Example Objective-C class which throws errors. */
@interface ObjectiveCClass : NSObject

// MARK: Functions Not Imported As `Throws`

/** Return value is `Void`. */
- (void)voidFunctionWithError:(NSError **)error;

/** Return value is a non-nullable primitive type. */
- (NSInteger)integerFunctionWithError:(NSError **)error;

/** Functions has a return value, but it is not nullable. */
- (NSString *)stringFunctionWithError:(NSError **)error;

// MARK: BOOL Functions Imported As `Throws`

// All functions in this section will be imported into Swift with the signature:
// func functionName() throws -> Void

/** Returns `YES` and does not set the `error` pointer. */
- (BOOL)returnYESDoNotSetError:(NSError **)error;

/** Returns `NO` and does not set the `error` pointer. */
- (BOOL)returnNODoNotSetError:(NSError **)error;

/** Returns `YES` and sets the `error` pointer. */
- (BOOL)returnYESSetError:(NSError **)error;

/** Returns `NO` and sets the `error` pointer. */
- (BOOL)returnNOSetError:(NSError **)error;

// MARK: NSString Functions Imported As `Throws`

// All functions in this section will be imported into Swift with the signature:
// func functionName() throws -> String

/** Returns an `NSString` and does not set the `error` pointer. */
- (nullable NSString *)returnStringDoNotSetError:(NSError **)error;

/** Returns `nil` and does not set the `error` pointer. */
- (nullable NSString *)returnNilDoNotSetError:(NSError **)error;

/** Returns an `NSString` and sets the `error` pointer. */
- (nullable NSString *)returnStringSetError:(NSError **)error;

/** Returns `nil` and sets the `error` pointer. */
- (nullable NSString *)returnNilSetError:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
