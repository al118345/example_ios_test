//
//  test_swiftUITests.swift
//  test_swiftUITests
//
//  Created by Ruben Perez Ibañez on 07/07/2021.
//  Copyright © 2021 organización_inventada. All rights reserved.
//

import XCTest

class test_swiftUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.textFields["text"].tap()
        app.textFields["text"].typeText("123")
        app.buttons["button"].tap()
        let value:String  = app.textFields["text"].value  as! String
        XCTAssertEqual(value,"Yes")
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
