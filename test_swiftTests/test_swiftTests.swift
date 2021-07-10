//
//  test_swiftTests.swift
//  test_swiftTests
//
//  Created by Ruben Perez Ibañez on 07/07/2021.
//  Copyright © 2021 organización_inventada. All rights reserved.
//

import XCTest
@testable import test_swift



class test_swiftTests: XCTestCase {
   
    var controller: ViewController = ViewController()
    
    override func setUp() {
        super.setUp()

  
          
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
          let str_number:String = "12344";
          let bResul:Bool = (controller.esDecimal(posible_decimal:str_number))
          XCTAssertTrue(bResul, "testExample error. \(str_number)");
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            controller.Parse()
            // Put the code you want to measure the time of here.
        }
    }

}
