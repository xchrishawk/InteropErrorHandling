//
//  SwiftClassTester.h
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//

#import <Foundation/Foundation.h>

/** Class to test Swift error handling from Objective-C. */
@interface SwiftClassTester : NSObject

/** Tests calling Swift functions with errors from Objective-C. */
+ (void)callSwiftFromObjectiveC;

@end
