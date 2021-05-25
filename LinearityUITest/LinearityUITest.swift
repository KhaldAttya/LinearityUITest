//
//  LinearityUITest.swift
//  LinearityUITest
//
//  Created by Khaled Attia on 23/05/2021.
//

import XCTest
import Foundation

class LinearityUITest: BaseTestCase {

    func testDeletePhoto() throws {
       
        let continueButton = app.buttons["Continue"]
        if continueButton.waitForExistence(timeout: 2) {
          continueButton.tap()
        }
        
        app.collectionViews["PhotosGridView"].cells.firstMatch.children(matching: .other).element.tap()
        let gotItButton = app.buttons["Got It"]
        if gotItButton.waitForExistence(timeout: 2) {
            gotItButton.tap()
        }
        app.toolbars.matching(identifier: "Toolbar").toolbars.matching(identifier: "Toolbar").buttons["Delete"].tap()
        app.sheets.scrollViews.otherElements.buttons["Delete Photo"].tap()
        app.buttons["All Photos"].tap()
        let view = UIImageView(image: app.screenshot().image.removingStatusBar)
        FBSnapshotVerifyView(view, overallTolerance: 0.01)
        
    }
}

