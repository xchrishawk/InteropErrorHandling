//
//  SwiftClass.swift
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//

import Foundation

/// Class to test Objective-C error handling from Swift.
class ObjectiveCClassTester {

    // MARK: Public API

    /// Tests calling Objective-C methods with errors from Swift.
    static func callObjectiveCFromSwift() {

        let objc = ObjectiveCClass()

        // test BOOL functions
        testBoolFunction("returnYESDoNotSetError", function: objc.returnYESDoNotSetError)
        testBoolFunction("returnNODoNotSetError", function: objc.returnNODoNotSetError)
        testBoolFunction("returnYESSetError", function: objc.returnYESSetError)
        testBoolFunction("returnNOSetError", function: objc.returnNOSetError)

        // test NSString functions
        testStringFunction("returnStringDoNotSetError", function: objc.returnStringDoNotSetError)
        testStringFunction("returnNilDoNotSetError", function: objc.returnNilDoNotSetError)
        testStringFunction("returnStringSetError", function: objc.returnStringSetError)
        testStringFunction("returnNilSetError", function: objc.returnNilSetError)

    }

    // MARK: Private Utility

    /// Tests the behavior of one of the `BOOL` Objective-C functions.
    private static func testBoolFunction(name: String, function: () throws -> Void) {
        do {
            try function()
            NSLog("Function \(name) succeeded!")
        } catch let error as NSError {
            NSLog("Function \(name) threw NSError! \(error)")
        }
    }

    /// Tests the behavior of one of the `NSString` Objective-C functions.
    private static func testStringFunction(name: String, function: () throws -> String) {
        do {
            let str = try function()
            NSLog("Function \(name) succeeded! Returned \(str)")
        } catch let error as NSError {
            NSLog("Function \(name) threw NSError! \(error)")
        }
    }

}
