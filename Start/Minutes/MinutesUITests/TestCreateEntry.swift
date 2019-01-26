//
//  TestCreateEntry.swift
//  MinutesUITests
//
//  Created by Timothy Wu on 2019-01-26.
//  Copyright © 2019 Microsoft. All rights reserved.
//

import XCTest

class TestCreateEntry: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        
        
        let app = XCUIApplication()
        app.navigationBars["Entries"].buttons["Add"].tap()
        app.otherElements.containing(.navigationBar, identifier:"Add New Entry").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
        app.textFields["Title"].tap()
        
        let app2 = app
        app2/*@START_MENU_TOKEN@*/.keys["h"]/*[[".keyboards.keys[\"h\"]",".keys[\"h\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let eKey = app2/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        eKey.tap()
        
        let lKey = app2/*@START_MENU_TOKEN@*/.keys["l"]/*[[".keyboards.keys[\"l\"]",".keys[\"l\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        lKey.tap()
        lKey.tap()

    
        let oKey = app2/*@START_MENU_TOKEN@*/.keys["o"]/*[[".keyboards.keys[\"o\"]",".keys[\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        oKey.tap()
        app.navigationBars["Add New Entry"].buttons["Save"].tap()
        
        XCTAssert(app.staticTexts["hello"].exists)
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
