//
//  SnapshotTestCase.swift
//  LinearityUITest
//
//  Created by Khaled Attia on 23/05/2021.
//



import XCTest
import FBSnapshotTestCase

class BaseTestCase: FBSnapshotTestCase {
    var app = XCUIApplication(bundleIdentifier: "com.apple.mobileslideshow")
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = true
        app.launch()
        recordMode = false
    }

    override func tearDownWithError() throws {
       
    }
}
