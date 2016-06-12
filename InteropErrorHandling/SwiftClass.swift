//
//  SwiftClass.swift
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//

import Foundation

/// Swift-only error enum.
enum SwiftErrorEnum: ErrorType {
    case BadError
    case ReallyBadError
    case DisastrousError
    case ApocalypticError
}

/// Example Swift class which throws errors.
@objc class SwiftClass: NSObject {

    /// Void function which does not throw an error.
    func voidFunction() -> Void {
    }

    /// Void function which throws an error.
    func voidFunctionThrows() throws -> Void {
        throw NSError(domain: "so.invictus.InteropErrorHandling", code: -2, userInfo: nil)
    }

    /// Function returning a string which throws an error.
    func stringFunctionThrows() throws -> String {
        throw NSError(domain: "so.invictus.InteropErrorHandling", code: -3, userInfo: nil)
    }

    /// Function returning a string and taking an argument.
    func stringFunctionWithArgument(shouldThrow: Bool) throws -> String {
        if shouldThrow {
            throw NSError(domain: "so.invictus.InteropErrorHandling", code: -4, userInfo: nil)
        } else {
            return "hello"
        }
    }

    /// Function throwing a Swift error enum.
    func functionThrowingSwiftErrorEnum() throws {
        throw SwiftErrorEnum.DisastrousError
    }

}
