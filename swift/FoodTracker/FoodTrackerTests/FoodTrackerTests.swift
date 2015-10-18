//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by ruby on 15/10/12.
//  Copyright © 2015年 LinuxGit. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    func testMealInitialization() {
        //Success case.
        let protentialItem = Meal(name: "Salad", photo: nil, rating: 5)
        XCTAssertNotNil(protentialItem)
        
        //Bad name.
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName, "Empty name is invalid.")
        
        //Bad rating.
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive.")
    }

}
