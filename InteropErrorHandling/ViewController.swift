//
//  ViewController.swift
//  InteropErrorHandling
//
//  Created by Chris Vig on 6/12/16.
//  Copyright © 2016 Chris Vig. All rights reserved.
//

import UIKit

/// Main view controller class.
class ViewController: UIViewController {

    // MARK: Actions

    /// Pressed the "Call Swift From Objective C" button.
    @IBAction func callSwiftFromObjectiveCTouchUpInside(sender: UIButton) {

    }

    /// Pressed the "Call Objective C From Swift" button.
    @IBAction func callObjectiveCFromSwiftTouchUpInside(sender: UIButton) {
        SwiftTestClass.callObjectiveCFromSwift()
    }

}

